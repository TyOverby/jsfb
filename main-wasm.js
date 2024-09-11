const canvas = document.querySelector("canvas");
const ctx = canvas.getContext('2d');

const w = 4096, h = 2160;

observe(canvas);

async function main() {
    const module = await WebAssembly.instantiateStreaming(fetch("main.opt.wasm"), {});
    window.module = module;
    const uint8_array = new Uint8ClampedArray(module.instance.exports.memory.buffer);
    window.uint8 = uint8_array;
    const img_buffer = new ImageData(uint8_array, w, h);

    function fillWasm(r, g, b) {
        module.instance.exports.fill_simd(r, g, b, w * h);
    }

    function line(r, g, b, x0, y0, x1, y1) {
        module.instance.exports.line(r, g, b, x0, y0, x1, y1, w);
    }

    function quad(r, g, b, x0, y0, x1, y1, x2, y2, x3, y3) {
        module.instance.exports.quad(x0, y0, x1, y1, x2, y2, x3, y3, r, g, b, w, h);
    }

    function tri(r, g, b, x0, y0, x1, y1, x2, y2) {
        module.instance.exports.tri(x0, y0, x1, y1, x2, y2, r, g, b, w, h);
    }

    function departure_a(r, g, b, x, y) {
        module.instance.exports['$departure/a'](r,g,b,x,y,w)
    }

    fillWasm(10, 50, 10);

    let b = true;
    function loop() {
        resizeCanvasToDisplaySize(canvas);

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
        quad(250,250,250, 20, 20,   50, 10,   100, 100,   10, 50);
        quad(250,0,250, 0, 100,   100, 100,   100, 200,   0, 200);
        quad(0,0,250, 100, 100,   200, 100,   200, 200,   100, 200);

        // tri
        tri(150,150,250,  100, 20,   200, 20,   150, 100);


        // star burst
        for (var theta = 0; theta < 2 * Math.PI; theta += (Math.PI / 10)) {
            let cx = 100, cy = 100;
            let dx = cx + 50 * Math.cos(theta), dy = cy + 50 * Math.sin(theta);
            line(255, 250, 100, cx, cy, dx, dy);
        }

        // sin wave
        var prev_x = 100;
        var prev_y = 200 + 50 * Math.cos(10);
        for (var x = 100; x < 300; x ++) {
            var y = 200 + (50 * Math.cos(x / 10));
            line(255, 250, 100, prev_x, prev_y, x, y);
            prev_x = x;
            prev_y = y;
        }
        // departure a
        departure_a(255,255,255, 0, 0);

        ctx.putImageData(img_buffer, 0, 0, 0,0, 250, 250);
        let after = performance.now();
        let delta = after - before;
        console.log(delta);

        setTimeout(loop, 1000);
        //window.requestAnimationFrame(loop);
    }

    window.requestAnimationFrame(loop);
}

main()
