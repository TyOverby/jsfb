const w = 4096, h = 2160;
let zoom = 1;

let canvas = { width : w, height: h }

async function main() {
    const walloc = await WebAssembly.instantiate(readbuffer("../walloc.wasm"), {});
    globalThis.walloc = walloc;
    const module = await WebAssembly.instantiate(readbuffer("../lux.wasm"), {
        runtime: walloc.instance.exports
    });
    globalThis.module = module;

    function malloc(n) {
        let r = walloc.instance.exports.malloc(n);
        if (r === 0) { throw new Error("malloc failed!"); }
        return r;
    }
    globalThis.malloc = malloc;

    function malloc_dv(n) {
        let ptr = malloc(n);
        return [ptr, new DataView(walloc.instance.exports.memory.buffer, ptr, n)];
    }
    globalThis.malloc_dv = malloc_dv;

    function free(p) {
        return walloc.instance.exports.free(p);
    }
    globalThis.free = free;

    const buf_size = (w * h * 4);
    const buf = malloc(buf_size);

    async function load_font(json_file, scale) {
        const letters = JSON.parse(read("../" + json_file));
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

    function many_rectangles(buf, count, ptr) {
        module.instance.exports.many_rectangles(buf, count, ptr, w, h);
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

    function rect(buf, r, g, b, min_x, min_y, rw, rh) {
        module.instance.exports.rect(buf, r, g, b, min_x, min_y, rw, rh, w, h)
    }

    function basic_rect(buf, r, g, b, min_x, min_y, rw, rh) {
        module.instance.exports.rect(buf, r, g, b, min_x, min_y, rw, rh, w, h)
    }

    function h_line(buf, r, g, b, x, y, len) {
        module.instance.exports.h_line(buf, r, g, b, x, y, len, w, h)
    }

    function v_line(buf, r, g, b, x, y, len) {
        module.instance.exports.v_line(buf, r, g, b, x, y, len, w, h)
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
    let [rect_ptr, rect_buf] = malloc_dv(count * (4 * 4 + 4 * 2 * 2));

    let b = false;

    let last_frame_delta = 0.0;

    function loop() {
        const before = performance.now();
        
        { // clear screen
            fillWasm(buf, 10, 50, 10);
        }

        { // field of triangles
            let tri_i = 0;
            let rect_i = 0;
            const curTime = new Date().getTime();
            for (let x = 100; x < w - 100; x+= 50) {
                for (let y = 100; y < h - 100; y+= 50) {
                    let pseudo_rand = (x * 29323948487 + y * 1223948737);
                    let pts = eq_tri_pts(x, y, 20, 
                        (curTime / (100 + (pseudo_rand % 1000 + 1))) + (pseudo_rand % 256));
                    let [p1x, p1y, p2x, p2y, p3x, p3y] = pts;
                    let rgba = pseudo_rand & 0xffffff00;

                    let min_x = Math.min(p1x, p2x, p3x);
                    let max_x = Math.max(p1x, p2x, p3x);
                    let min_y = Math.min(p1y, p2y, p3y);
                    let max_y = Math.max(p1y, p2y, p3y);

                    tri_buf.setUint32(tri_i + 0, rgba, true);
                    rect_buf.setUint32(rect_i + 0, ~rgba, true);

                    tri_buf.setUint32(tri_i + 4, p1x, true);
                    tri_buf.setUint32(tri_i + 8, p1y, true);

                    rect_buf.setUint32(rect_i + 4, min_x, true);
                    rect_buf.setUint32(rect_i + 8, min_y, true);

                    tri_buf.setUint32(tri_i + 12, p2x, true);
                    tri_buf.setUint32(tri_i + 16, p2y, true);

                    rect_buf.setUint32(rect_i + 12, max_x - min_x, true);
                    rect_buf.setUint32(rect_i + 16, max_y - min_y, true);

                    tri_buf.setUint32(tri_i + 20, p3x, true);
                    tri_buf.setUint32(tri_i + 24, p3y, true);

                    tri_i += 28;
                    rect_i += 20;
                }
            }
        }

        if (b) {
          //many_triangles(buf, count, tri_ptr);
          many_rectangles(buf, count, rect_ptr);
        } else {
          many_rectangles(buf, count, rect_ptr);
          many_triangles_simd(buf, count, tri_ptr);
        }

        { // quads
            // Weird white quad in top-left corner
            quad(buf, 250, 250, 250, 20, 20, 50, 10, 100, 100, 10, 50);
            // Pink square
            quad(buf, 250, 0, 250, 0, 100, 100, 100, 100, 200, 0, 200);
            // Blue rectangle
            quad(buf, 0, 0, 250, 100, 100, 300, 100, 300, 200, 100, 200);
        }

        { // lavendar upside down triangle
            tri(buf, 150, 150, 250, 100, 20, 200, 20, 150, 100);
        }

        { // yellow star burst
            for (var theta = 0; theta < 2 * Math.PI; theta += (Math.PI / 10)) {
                let cx = 100, cy = 100;
                let dx = cx + 50 * Math.cos(theta), dy = cy + 50 * Math.sin(theta);
                line(buf, 255, 250, 100, cx, cy, dx, dy);
            }
        }

        { // yellow sin wave
            var prev_x = 100;
            var prev_y = 200 + 50 * Math.cos(10);
            for (var x = 100; x < 300; x++) {
                var y = 200 + (50 * Math.cos(x / 10));
                line(buf, 255, 250, 100, prev_x, prev_y, x, y);
                prev_x = x;
                prev_y = y;
            }
        }


        { // alphabet
            // white rectangle for drawing text on top of
            quad(buf, 255, 255, 255, 0, 250, 250, 250, 250, 500, 0, 500);

            for (let i = 0; i < 26; i++) {
                char(buf, font, 97 + i, 0, 0, 0, 4 + (i * 8 * 2), 300);
            }
        }

        { // string
            const s = "hello\nworld\na1b2c3"
            const [string_ptr, string_dv] = malloc_dv((s.length + 1) * 2);
            string_dv.setUint16(s.length * 2, 0, true);
            for (let i = 0; i < s.length; i++) {
                string_dv.setUint16(i * 2, s.charCodeAt(i), true);
            }
            string(buf, font, string_ptr, 0,0,0, 4, 400);
            free(string_ptr);
        }

        { // small thing in the corner
            basic_rect(buf, 255, 0, 0, 1, 1, 3, 3);
            h_line(buf, 0, 255, 0, 1, 2, 3);
            v_line(buf, 0, 0, 255, 2, 1, 3);
        }

        { // fps counter
            const last_frame_fps = Math.ceil(1 / (last_frame_delta / 1000));
            const s = "" + last_frame_fps;
            let width = s.length * 14;
            let height = 20;
            let x_offset = canvas.width - width - 8;

            quad(buf, 200, 50, 50, x_offset, 0, 8 + width + x_offset, 0, 8 + width + x_offset, 4 + height, x_offset, 4 + height);

            const [string_ptr, string_dv] = malloc_dv((s.length + 1) * 2);

            for (let i = 0; i < s.length; i++) {
                string_dv.setUint16(i * 2, s.charCodeAt(i), true);
            }

            string_dv.setUint16(s.length * 2, 0, true);

            string(buf, font, string_ptr, 255, 255, 255, 4 + x_offset, 4);
            free(string_ptr);
        }

        { // frame duration counter
            const s = last_frame_delta.toFixed(2);
            let width = s.length * 14;
            let height = 20;
            let x_offset = canvas.width - width - 8;
            let y_offset = height + 4;

            quad(buf, 200, 50, 50, x_offset, y_offset, 8 + width + x_offset, y_offset, 8 + width + x_offset, 4 + height + y_offset, x_offset, 4 + height + y_offset);

            const [string_ptr, string_dv] = malloc_dv((s.length + 1) * 2);

            for (let i = 0; i < s.length; i++) {
                string_dv.setUint16(i * 2, s.charCodeAt(i), true);
            }

            string_dv.setUint16(s.length * 2, 0, true);

            string(buf, font, string_ptr, 255, 255, 255, 4 + x_offset, 4 + y_offset);
            free(string_ptr);
        }

        { // set fps for next frame 
            let after = performance.now();
            let delta = after - before;
            console.log(delta);
            last_frame_delta = delta;
        }

       if (true) {
         loop();
       }
    }

    loop();
}
main()
