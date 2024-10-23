const canvas = document.querySelector("canvas");
const ctx = canvas.getContext('2d', {
  willReadFrequently: true, 
  desynchronized : false, 
  alpha: false,
});

const w = 4096, h = 2160;
let zoom = 1;

observe(canvas);

let img_data_offset_x = 0;
let img_data_offset_y = 0;

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

    function string(buf, font, string, r, g, b, x, y) {
        module.instance.exports.string(buf, font, string, r, g, b, x, y, w, h);
    }

    let count = 0;

    let rects = [];
    let rect_width = Math.floor(w / 200);
    let rect_height = Math.ceil(h / 40);
    for (let row = -20; row < 20; row++) {
      let y = rect_height * (row + 20);
      for (let col = 0; col < 200; col++) {
        let x = rect_width * col;
        let value = Math.floor(Math.random() * 256 * 1.5);
        if (value < 10) { value = 0} 
        let this_rect_width = rect_width;
        let my_cols = 1;
        let bid_or_offer = Math.sin(col / 8) > (row / 5);
        let dist = Math.sin(col / 8) - (row / 5);


        if (Math.abs(dist) < (Math.sin(col / 10) + 1) / 2 + 0.1) { 
          value = 0
        } else {
          //value += (dist - (Math.sin(col / 10) + 1)) * 100 | 0;
        };

        while (Math.random() > 0.3)  {
          col++;
          my_cols++;
        } 
        console.log(this_rect_width);
        rects.push({row, col, x, y, w:(my_cols * rect_width), h:rect_height, value, bid_or_offer });
        count++;
      }
    }

    let [rect_ptr, rect_buf] = malloc_dv(count * (4 * 4 + 4 * 2 * 3));

    function loop() {
        resizeCanvasToDisplaySize(canvas, zoom);
        const before = performance.now();
        fillWasm(buf, 0,0,0);
        let rect_i = 0;
        const curTime = new Date().getTime();
        for (let {row,x,y,w,h,value, bid_or_offer} of rects) {
            let red = 0, green = 0, blue = 0;
            if (bid_or_offer) {
              if (value < 255) {
                red = value
              } else {
                red = 255;
                //green = value - 255
                blue = value - 255
              }
            } else {
              if (value < 255) {
                green = value;
              } else {
                green = 255;
                //red = value - 255;
                blue = value - 255;
              }
            }

            let rgba = (red << 24) | (green << 16) | (blue << 8);

            rect_buf.setUint32(rect_i + 0, rgba, true);

            rect_buf.setUint32(rect_i + 4, x, true);
            rect_buf.setUint32(rect_i + 8, y, true);

            if (false) {//value === 0) {
              rect_buf.setUint32(rect_i + 12, w, true);
              rect_buf.setUint32(rect_i + 16, h, true);
            } else {
              rect_buf.setUint32(rect_i + 12, w - 1, true);
              rect_buf.setUint32(rect_i + 16, h - 1, true);
            }

            rect_i += 20;
        }

        many_rectangles(buf, count, rect_ptr);

        const uint8_array = new Uint8ClampedArray(walloc.instance.exports.memory.buffer, buf, buf_size);
        window.uint8 = uint8_array;
        const img_buffer = new ImageData(uint8_array, w, h);
        window.img_buffer = img_buffer;

        ctx.putImageData(img_buffer, img_data_offset_x, img_data_offset_y, 0, 0, w, h);
        //img_data_offset -= 50;
        let after = performance.now();
        let delta = after - before;
        //console.log(delta);
      
        //setTimeout(loop, 0);
        window.requestAnimationFrame(loop);
    }

    window.requestAnimationFrame(loop);
}
main()

let prev_x, prev_y;

function on_move(e) {
  const dx = e.x - prev_x;
  const dy = e.y - prev_y;

  prev_x = e.x;
  prev_y = e.y;

  img_data_offset_x += dx * devicePixelRatio;
  img_data_offset_y += dy * devicePixelRatio;

  img_data_offset_x = Math.min(0, img_data_offset_x);
  img_data_offset_x = Math.max(canvas.width - w, img_data_offset_x);

  img_data_offset_y = Math.min(0, img_data_offset_y);
  img_data_offset_y = Math.max(canvas.height - h, img_data_offset_y);
}


function on_down(e) {
  canvas.addEventListener("pointermove", on_move)
  canvas.setPointerCapture(e.pointerId);
  prev_x = e.x;
  prev_y = e.y;

  canvas.addEventListener("pointerup", function() {
    canvas.removeEventListener("pointerup", on_down);
    canvas.removeEventListener("pointermove", on_move);
    canvas.releasePointerCapture(e.pointerId);
  });
}

canvas.addEventListener("pointerdown", on_down);
