const canvas = document.querySelector("canvas");
const ctx = canvas.getContext('2d');

const w = 4096, h = 2160;
let zoom = 3;

observe(canvas);

async function main() {
    const walloc = await WebAssembly.instantiateStreaming(fetch("walloc.wasm"), {});
    window.walloc = walloc;
    const module = await WebAssembly.instantiateStreaming(fetch("lux.wasm"), {
        runtime: walloc.instance.exports
    });
    window.module = module;

    function malloc(n) {
        let r = walloc.instance.exports.malloc(n);
        if (r === 0) { throw new Error("malloc failed!"); }
        return r;
    }
    window.malloc = malloc;

    function malloc_dv(n) {
        let ptr = malloc(n);
        return [ptr, new DataView(walloc.instance.exports.memory.buffer, ptr, n)];
    }
    window.malloc_dv = malloc_dv;

    function free(p) {
        return walloc.instance.exports.free(p);
    }
    window.free = free;

    const buf_size = (w * h * 4);
    const buf = malloc(buf_size);

    async function load_font(json_file, scale) {
        const letters = await (await fetch(json_file)).json();
        // hack 
        letters.push({
          char: " ",
          code: 32,
          pixels: ["       "],
          width: 7,
        });
        const [table_ptr, table] = malloc_dv((letters.length) * 8 + 4);
        let table_offset = 0;
        for (let letter of letters) {
            let letter_width = letter.pixels[0].length;
            const letter_buf_size_bytes =
                4 + // code
                4 + // width
                4 + // height
                (letter_width * scale) * (letter.pixels.length * scale);
            const [ptr, dv] = malloc_dv(letter_buf_size_bytes);
            dv.setUint32(0, letter.code, true);
            dv.setUint32(4, letter_width * scale, true);
            dv.setUint32(8, letter.pixels.length * scale, true);
            let i = 12;
            for (let y = 0; y < letter.pixels.length; y++) {
                for (let _a = 0; _a < scale; _a++) {
                    for (let x = 0; x < letter_width; x++) {
                        for (let _b = 0; _b < scale; _b++) {
                            const is_set = letter.pixels[y][x] === "X";
                            dv.setUint8(i, is_set ? 1 : 0);
                            i++;
                        }
                    }
                }
            }

            table.setUint32(table_offset, letter.code, true);
            table.setUint32(table_offset + 4, ptr, true);
            table_offset += 8;
        }
        return table_ptr;
    }

    const font = await load_font("./departure.json", 2);

    function fillWasm(buf, r, g, b) {
        module.instance.exports.fill(buf, r, g, b, w * h);
    }

    function line(buf, r, g, b, x0, y0, x1, y1) {
        module.instance.exports.line(buf, r, g, b, x0, y0, x1, y1, w);
    }

    function quad(buf, r, g, b, x0, y0, x1, y1, x2, y2, x3, y3) {
        module.instance.exports.quad(buf, x0, y0, x1, y1, x2, y2, x3, y3, r, g, b, w, h);
    }

    function tri(buf, r, g, b, x0, y0, x1, y1, x2, y2) {
        module.instance.exports.tri(buf, x0, y0, x1, y1, x2, y2, r, g, b, w, h);
    }

    function many_triangles(buf, count, ptr) {
        module.instance.exports.many_triangles(buf, count, ptr, w, h);
    }

    function tri_simd(buf, r, g, b, x0, y0, x1, y1, x2, y2) {
        module.instance.exports.tri_simd(buf, x0, y0, x1, y1, x2, y2, r, g, b, w, h);
    }

    function many_triangles_simd(buf, count, ptr) {
        module.instance.exports.many_triangles_simd(buf, count, ptr, w, h);
    }

    function char(buf, font, char, r, g, b, x, y) {
        module.instance.exports.single_char(buf, font, char, r, g, b, x, y, w, h);
    }

    function string(buf, font, string, r, g, b, x, y) {
        module.instance.exports.string(buf, font, string, r, g, b, x, y, w, h);
    }

    function eq_tri_pts(cx, cy, rad, angle) {
        const a1 = angle;
        const a2 = 2 * Math.PI / 3 + angle;
        const a3 = 4 * Math.PI / 3 + angle;

        let p1x = Math.floor(cx + rad * Math.cos(a1));
        let p1y = Math.floor(cy + rad * Math.sin(a1));

        let p2x = Math.floor(cx + rad * Math.cos(a2));
        let p2y = Math.floor(cy + rad * Math.sin(a2));

        let p3x = Math.floor(cx + rad * Math.cos(a3));
        let p3y = Math.floor(cy + rad * Math.sin(a3));

        return [p1x, p1y, p2x, p2y, p3x, p3y];
    }

    function eq_tri(buf, r, g, b, cx, cy, rad, angle) {
        const a1 = angle;
        const a2 = 2 * Math.PI / 3 + angle;
        const a3 = 4 * Math.PI / 3 + angle;

        let p1x = Math.floor(cx + rad * Math.cos(a1));
        let p1y = Math.floor(cy + rad * Math.sin(a1));

        let p2x = Math.floor(cx + rad * Math.cos(a2));
        let p2y = Math.floor(cy + rad * Math.sin(a2));

        let p3x = Math.floor(cx + rad * Math.cos(a3));
        let p3y = Math.floor(cy + rad * Math.sin(a3));

        tri(buf, r, g, b, p1x, p1y, p2x, p2y, p3x, p3y);
    }

    // many triangles_dv
    let count = 0;
    for (let x = 100; x < w - 100; x+= 50) {
        for (let y = 100; y < h - 100; y+= 50) {
            count++
        }
    }

    let [tri_ptr, tri_buf] = malloc_dv(count * (4 * 4 + 4 * 2 * 3));

    let b = false;

    //setInterval(() => { b = ! b}, 500);

    function loop() {
        
        resizeCanvasToDisplaySize(canvas, zoom);

        const before = performance.now();
        fillWasm(buf, 10, 50, 10);
        let i = 0;
        const curTime = new Date().getTime();
        for (let x = 100; x < w - 100; x+= 50) {
            for (let y = 100; y < h - 100; y+= 50) {
                let pseudo_rand = (x * 29323948487 + y * 1223948737);
                let pts = eq_tri_pts(x, y, 20, 
                    (curTime / (100 + (pseudo_rand % 1000 + 1))) + (pseudo_rand % 256));
                let [p1x, p1y, p2x, p2y, p3x, p3y] = pts;
                tri_buf.setUint32(i + 0, pseudo_rand & 0xffffff00, true);

                tri_buf.setUint32(i + 4, p1x, true);
                tri_buf.setUint32(i + 8, p1y, true);

                tri_buf.setUint32(i + 12, p2x, true);
                tri_buf.setUint32(i + 16, p2y, true);

                tri_buf.setUint32(i + 20, p3x, true);
                tri_buf.setUint32(i + 24, p3y, true);

                i += 28;
            }
        }

        if (b) {
          many_triangles(buf, count, tri_ptr);
        } else {
          many_triangles_simd(buf, count, tri_ptr);
        }

        // quad
        quad(buf, 250, 250, 250, 20, 20, 50, 10, 100, 100, 10, 50);
        quad(buf, 250, 0, 250, 0, 100, 100, 100, 100, 200, 0, 200);
        quad(buf, 0, 0, 250, 100, 100, 200, 100, 200, 200, 100, 200);

        // tri
        tri(buf, 150, 150, 250, 100, 20, 200, 20, 150, 100);

        // star burst
        for (var theta = 0; theta < 2 * Math.PI; theta += (Math.PI / 10)) {
            let cx = 100, cy = 100;
            let dx = cx + 50 * Math.cos(theta), dy = cy + 50 * Math.sin(theta);
            line(buf, 255, 250, 100, cx, cy, dx, dy);
        }

        // sin wave
        var prev_x = 100;
        var prev_y = 200 + 50 * Math.cos(10);
        for (var x = 100; x < 300; x++) {
            var y = 200 + (50 * Math.cos(x / 10));
            line(buf, 255, 250, 100, prev_x, prev_y, x, y);
            prev_x = x;
            prev_y = y;
        }

        // white rectangle for drawing text to
        quad(buf, 255, 255, 255, 0, 250, 250, 250, 250, 500, 0, 500);

        // alphabet
        for (let i = 0; i < 26; i++) {
            char(buf, font, 97 + i, 0, 0, 0, 4 + (i * 8 * 2), 300);
        }

        // string
        const s = "hello\nworld"
        const [string_ptr, string_dv] = malloc_dv((s.length + 1) * 2);
        string_dv.setUint16(s.length, 0, true);
        for (let i = 0; i < s.length; i++) {
            string_dv.setUint16(i * 2, s.charCodeAt(i), true);
        }
        string(buf, font, string_ptr, 0,0,0, 4, 400);
        free(string_ptr);


        const uint8_array = new Uint8ClampedArray(walloc.instance.exports.memory.buffer, buf, buf_size);
        window.uint8 = uint8_array;
        const img_buffer = new ImageData(uint8_array, w, h);
        window.img_buffer = img_buffer;

        ctx.putImageData(img_buffer, 0, 0, 0, 0, w, h);
        let after = performance.now();
        let delta = after - before;
        //console.log(delta);

        //setTimeout(loop, 1000);
        window.requestAnimationFrame(loop);
    }

    window.requestAnimationFrame(loop);
}
main()
