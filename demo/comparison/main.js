const w = 4096, h = 2160;
const canvas = new OffscreenCanvas(w, h);
const ctx = canvas.getContext('2d', { willReadFrequently:true });

const final_canvas= document.querySelector("canvas");
const final_ctx = final_canvas.getContext('2d');

canvas.width = w;
canvas.height = h;
let zoom = 3;

observe(final_canvas);

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

function tri(r, g, b, x0, y0, x1, y1, x2, y2) {
    ctx.fillStyle=`rgb(${r}, ${g}, ${b})`;
    ctx.beginPath();
    ctx.moveTo(x0, y0);
    ctx.lineTo(x1, y1);
    ctx.lineTo(x2, y2);
    ctx.fill();
}

function quad(r, g, b, x0, y0, x1, y1, x2, y2, x3, y3) {
    ctx.fillStyle=`rgb(${r}, ${g}, ${b})`;
    ctx.beginPath();
    ctx.moveTo(x0, y0);
    ctx.lineTo(x1, y1);
    ctx.lineTo(x2, y2);
    ctx.lineTo(x3, y3);
    ctx.fill();
}

function line(r, g, b, x0, y0, x1, y1) {
    ctx.strokeStyle=`rgb(${r}, ${g}, ${b})`;
    ctx.lineWidth = 3;
    ctx.beginPath();
    ctx.moveTo(x0, y0);
    ctx.lineTo(x1, y1);
    ctx.stroke();
}

function char(font, char, r, g, b, x, y) {
  ctx.font = font;
  ctx.fillStyle=`rgb(${r}, ${g}, ${b})`;
  ctx.fillText(char, x, y);
}

function string(font, string, r, g, b, x, y) {
  ctx.font = font;
  ctx.fillStyle=`rgb(${r}, ${g}, ${b})`;
  ctx.fillText(string, x, y);
}


async function main() {
    function loop() {
        resizeCanvasToDisplaySize(final_canvas, zoom);

        ctx.fillStyle = `rgb(10,50,10)`;
        ctx.fillRect(0, 0, w, h);

        let before = performance.now();

        // many triangles
        for (let x = 100; x < w - 100; x+= 50) {
            for (let y = 100; y < h - 100; y+= 50) {
                let pseudo_rand = (x * 29323948487 + y * 1223948737);
                const [p1x, p1y, p2x, p2y, p3x, p3y] = eq_tri_pts(x, y, 20, new Date().getTime() / 1000 + (pseudo_rand % 256));
                const r = (pseudo_rand & 0xff000000) >>> 24;
                const g = (pseudo_rand & 0x00ff0000) >>> 16;
                const b = (pseudo_rand & 0x0000ff00) >>> 8;
                tri(r, g, b, p1x, p1y, p2x, p2y, p3x, p3y);
            }
        }

        // quad
        quad(250, 250, 250, 20, 20, 50, 10, 100, 100, 10, 50);
        quad(250, 0, 250, 0, 100, 100, 100, 100, 200, 0, 200);
        quad(0, 0, 250, 100, 100, 200, 100, 200, 200, 100, 200);

        // tri
        tri(150, 150, 250, 100, 20, 200, 20, 150, 100);

        // star burst
        for (var theta = 0; theta < 2 * Math.PI; theta += (Math.PI / 10)) {
            let cx = 100, cy = 100;
            let dx = cx + 50 * Math.cos(theta), dy = cy + 50 * Math.sin(theta);
            line(255, 250, 100, cx, cy, dx, dy);
        }

        // sin wave
        var prev_x = 100;
        var prev_y = 200 + 50 * Math.cos(10);
        for (var x = 100; x < 300; x++) {
            var y = 200 + (50 * Math.cos(x / 10));
            line(255, 250, 100, prev_x, prev_y, x, y);
            prev_x = x;
            prev_y = y;
        }

        // white rectangle for drawing text to
        quad(255, 255, 255, 0, 250, 250, 250, 250, 500, 0, 500);

        // alphabet
        for (let i = 0; i < 26; i++) {
            char("22px departure", String.fromCharCode(97+i), 0, 0, 0, 4 + (i * 8 * 2), 300);
        }

        // string
        string("22px departure", "hello\nworld", 0,0,0, 4, 400);

        const img_buffer = ctx.getImageData(0,0,w,h);
        final_ctx.putImageData(img_buffer, 0, 0);
        let after = performance.now();
        let delta = after - before;
        //console.log(delta);

        //setTimeout(loop, 1000);
        window.requestAnimationFrame(loop);
    }

    window.requestAnimationFrame(loop);
}
main()
