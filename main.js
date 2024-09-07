const canvas = document.querySelector("canvas");
const ctx = canvas.getContext('2d');

const w = 4096, h = 2160;
const buffer = new ArrayBuffer(w * h * 4);
const uint8_array = new Uint8ClampedArray(buffer);
const uint32_array = new Uint32Array(buffer);
const img_buffer = new ImageData(uint8_array, w, h);


observe(canvas);

function patterns(canvas) {
    ctx.fillStyle = '#000';
    ctx.fillRect(10, 10, 1, 100);
}

function fill8(r, g, b) {
    let i = 0;
    for (let y = 0; y < h; y++) {
        for (let x = 0; x < w; x++) {
            uint8_array[i] = r;
            uint8_array[i + 1] = g;
            uint8_array[i + 2] = b;
            uint8_array[i + 3] = 255;
            i += 4;
        }
    }
}

function fill32(r, g, b) {
    let rgba = r << 24 | g << 16 | b << 8 | 0xFF;
    let i = 0;
    for (let y = 0; y < h; y++) {
        for (let x = 0; x < w; x++) {
            uint32_array[i] = rgba;
            i++;
        }
    }
}

function fillRect(r, g, b) {
    ctx.fillStyle = `rgb(${r}, ${g}, ${b})`;
    ctx.fillRect(0, 0, w, h);
    let buf = ctx.getImageData(0, 0, w, h);
    buf.data[1] = 255;
    buf.data[2] = 255;
    ctx.putImageData(buf, 0, 0);
}

let b = true;
function loop() {
    let before = performance.now();
    resizeCanvasToDisplaySize(canvas);
    if (b) {
        fillRect(255, 0, 0);
    } else {
        fillRect(250, 0, 0);
    }
    b = !b;

    //ctx.putImageData(img_buffer, 0, 0);
    let after = performance.now();
    let delta = after - before;
    console.log(delta);
    window.requestAnimationFrame(loop);
}

window.requestAnimationFrame(loop);