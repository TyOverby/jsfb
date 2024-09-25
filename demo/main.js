const canvas = document.querySelector("canvas");
const ctx = canvas.getContext('2d');

const w = 4096, h = 2160;
let zoom = 1;

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

    async function load_font() {
        const letters = await (await fetch("./departure.json")).json();
        const [table_ptr, table] = malloc_dv((letters.length) * 8 + 4);
        let table_offset = 0;
        for (let letter of letters) {
            const letter_buf_size_bytes =
                4 + // code
                4 + // width
                4 + // height
                letter.width * letter.pixels.length;
            const [ptr, dv] = malloc_dv(letter_buf_size_bytes);
            dv.setUint32(0, letter.code, true);
            dv.setUint32(4, letter.width, true);
            dv.setUint32(8, letter.pixels.length, true);
            let i = 12;
            for (let y = 0; y < letter.pixels.length; y++) {
                for (let x = 0; x < letter.width; x++) {
                    const is_set = letter.pixels[y][x] === "X";
                    dv.setUint8(i, is_set ? 1 : 0);
                    i++;
                }
            }

            table.setUint32(table_offset, letter.code, true);
            table.setUint32(table_offset + 4, ptr, true);
            table_offset += 8;
        }
        return table_ptr;
    }

    const font = await load_font();

    function fillWasm(buf, r, g, b) {
        module.instance.exports.fill_simd(buf, r, g, b, w * h);
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

    function char(buf, font, char, r, g, b, x, y) {
        module.instance.exports.single_char(buf, font, char, r, g, b, x, y, w, h);
    }

    fillWasm(buf, 10, 50, 10);

    let b = true;
    function loop() {
        resizeCanvasToDisplaySize(canvas, zoom);

        ctx.fillStyle = `rgb(255,255,255)`;
        ctx.fillRect(0, 0, w, h);

        let before = performance.now();
        if (b) {
            // fillWasm(10, 50, 10);
        } else {
            //fillWasm(10, 10, 50);
        }
        b = !b;

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

        quad(buf, 255, 255, 255, 0, 250, 250, 250, 250, 500, 0, 500);
        for (let i = 0; i < 26; i++) {
            char(buf, font, 97 + i, 0, 0, 0, 4 + (i * 8), 300);
        }

        const uint8_array = new Uint8ClampedArray(walloc.instance.exports.memory.buffer, buf, buf_size);
        window.uint8 = uint8_array;
        const img_buffer = new ImageData(uint8_array, w, h);
        window.img_buffer = img_buffer;

        ctx.putImageData(img_buffer, 0, 0, 0, 0, w, h);
        let after = performance.now();
        let delta = after - before;
        //console.log(delta);

        setTimeout(loop, 1000);
        //window.requestAnimationFrame(loop);
    }

    window.requestAnimationFrame(loop);
}

main()