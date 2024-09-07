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

    let b = true;
    function loop() {
        let before = performance.now();
        resizeCanvasToDisplaySize(canvas);
        if (b) {
            fillWasm(100, 0, 0);
        } else {
            fillWasm(101, 0, 0);
        }
        b = !b;

        ctx.putImageData(img_buffer, 0, 0);
        let after = performance.now();
        let delta = after - before;
        console.log(delta);
        window.requestAnimationFrame(loop);
    }

    window.requestAnimationFrame(loop);
}

main()