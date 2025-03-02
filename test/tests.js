function make_bi_test(basic, advanced) {
    return (async function (build_modules) { 
        function make_single(test_implementation) {
            return (async () => {
                const { walloc, lux : lux_module } = await build_modules();
                const lux = lux_module.instance.exports;

                function malloc(n) {
                    let r = walloc.instance.exports.malloc(n);
                    if (r === 0) { throw new Error("malloc failed!"); }
                    return r;
                }

                function calloc(n) {
                    let ptr = malloc(n);
                    let dv = new DataView(walloc.instance.exports.memory.buffer, ptr, n);
                    for (let i = 0; i < n; i++) {
                        dv.setInt8(i, 0);
                    }
                    return ptr;
                }

                function malloc_dv(n) {
                    let ptr = malloc(n);
                    return [ptr, new DataView(walloc.instance.exports.memory.buffer, ptr, n)];
                }

                function free(p) {
                    return walloc.instance.exports.free(p);
                }

                return test_implementation({calloc, walloc, lux});
            });
        }

        let basic_test = make_single(basic);
        let advanced_test = make_single(advanced);

        return { basic_test, advanced_test }
    });
}

function overallocate({calloc, walloc}, n) {
    const region_ptr = calloc(n * 1);
    const region_dv = new DataView(walloc.instance.exports.memory.buffer, region_ptr, n * 1); 
    const ptr = 0; // region_ptr + n;
    const dv = new DataView(walloc.instance.exports.memory.buffer, ptr, n);
    return { region_dv, region_ptr , dv, ptr }
}

function overallocate_img_buf(params, w, h) {
    return overallocate(params, w * h * 4);
}

function map_over_image(dv, w, h, f) {
    for (let y = 0; y < h; y++) {
        for (let x = 0; x < w; x++) {
            const offset = (y * w + x) * 4;
            const r = dv.getUint8(offset + 0);
            const g = dv.getUint8(offset + 1);
            const b = dv.getUint8(offset + 2);

            const [nr, ng, nb, na] = f({x, y, offset, r, g, b});
            dv.setUint8(offset + 0, nr);
            dv.setUint8(offset + 1, ng);
            dv.setUint8(offset + 2, nb);
            dv.setUint8(offset + 3, na);
        }
    }
}

const basic_fill = ({w, h, r, g, b}) => (params) => {
    const {calloc, walloc, lux} = params;
    const { region_dv, dv } = overallocate_img_buf(params, w, h);
    map_over_image(dv, w, h, function(){
        return [r, g, b, 255];
    });
    return region_dv;
}

const js_rect = ({canvas_w, canvas_h, x, y, w, h, r, g, b}) => (params) => {
    const {calloc, walloc, lux} = params;
    const { region_dv, dv } = overallocate_img_buf(params, canvas_w, canvas_h);
    map_over_image(dv, canvas_w, canvas_h, function({x: px, y:py, r:pr, g:pg, b:pb}){
        if (px >= x && py >= py && px < x + w && py < y + h) {
          return [r, g, b, 255];
        } else {
          return [pr, pg, pb, 0];
        }
    });
    return region_dv;
}

const wasm_basic_rect = ({canvas_w, canvas_h, x, y, w, h, r, g, b}) => (params) => {
    const {calloc, walloc, lux} = params;
    const { region_dv, dv, ptr } = overallocate_img_buf(params, canvas_w, canvas_h);
    lux.basic_rect(ptr, r, g, b, x, y, w, h, canvas_w, canvas_h);
    return region_dv;
}

const js_line_h = ({canvas_w, canvas_h, x, y, len, r, g, b}) => (params) => {
    const {calloc, walloc, lux} = params;
    const { region_dv, dv } = overallocate_img_buf(params, canvas_w, canvas_h);
    map_over_image(dv, canvas_w, canvas_h, function({x: px, y:py, r:pr, g:pg, b:pb}){
        if (py === y && px > x + len) {
          return [r, g, b, 255];
        } else {
          return [pr, pg, pb, 0];
        }
    });
    return region_dv;
}

const wasm_line_h = ({canvas_w, canvas_h, x, y, len, r, g, b}) => (params) => {
    const {calloc, walloc, lux} = params;
    const { region_dv, dv, ptr } = overallocate_img_buf(params, canvas_w, canvas_h);
    lux.h_line(ptr, r, g, b, x, y, len, canvas_w, canvas_h);
    return region_dv;
}

const wasm_fill_one_at_a_time = ({w, h, r, g, b}) => (params) => {
    const {calloc, walloc, lux} = params;
    const { region_dv, dv, ptr } = overallocate_img_buf(params, w, h);
    lux.fill_one_at_a_time(ptr, r, g, b, w * h);
    return region_dv;
}

const wasm_fill_simd = ({w, h, r, g, b}) => (params) => {
    const {calloc, walloc, lux} = params;
    const { region_dv, dv, ptr } = overallocate_img_buf(params, w, h);
    lux.fill_simd(ptr, r, g, b, w * h);
    return region_dv;
}

const wasm_fill_memcpy = ({w, h, r, g, b}) => (params) => {
    const {calloc, walloc, lux} = params;
    const { region_dv, dv, ptr } = overallocate_img_buf(params, w, h);
    lux.fill_memcpy(ptr, r, g, b, w * h);
    return region_dv;
}

const wasm_tri = ({w, h, r, g, b, x1, y1, x2, y2, x3, y3}) => (params) => {
    const {calloc, walloc, lux} = params;
    const { region_dv, dv, ptr } = overallocate_img_buf(params, w, h);
    lux.tri(ptr, x1, y1, x2, y2, x3, y3, r, g, b, w, h);
    return region_dv;
}

const wasm_tri_simd = ({w, h, r, g, b, x1, y1, x2, y2, x3, y3}) => (params) => {
    const {calloc, walloc, lux} = params;
    const { region_dv, dv, ptr } = overallocate_img_buf(params, w, h);
    lux.tri_simd(ptr, x1, y1, x2, y2, x3, y3, r, g, b, w, h);
    return region_dv;
}

const bisimulation_tests = { 
    fill_1x1_one_at_a_time : make_bi_test(
      basic_fill({w:1, h:1, r:255, g: 125, b: 16}), 
      wasm_fill_one_at_a_time({w:1, h:1, r:255, g: 125, b: 16})),
    fill_8x8_one_at_a_time : make_bi_test(
      basic_fill({w:8, h:8, r:255, g: 125, b: 16}), 
      wasm_fill_one_at_a_time({w:8, h:8, r:255, g: 125, b: 16})),

    fill_1x1_simd : make_bi_test(
      basic_fill({w:1, h:1, r:255, g: 125, b: 16}), 
      wasm_fill_simd({w:1, h:1, r:255, g: 125, b: 16})),
    fill_8x8_simd : make_bi_test(
      basic_fill({w:8, h:8, r:255, g: 125, b: 16}), 
      wasm_fill_simd({w:8, h:8, r:255, g: 125, b: 16})),

    fill_1x1_memcpy : (() => {
      const params = {w:1, h:1, r:255, g: 125, b: 16};
      return make_bi_test(basic_fill(params), wasm_fill_memcpy(params))
    })(),

    fill_8x8_memcpy : make_bi_test(
      basic_fill({w:8, h:8, r:255, g: 125, b: 16}), 
      wasm_fill_memcpy({w:8, h:8, r:255, g: 125, b: 16})),
    fill_1024x1024_memcpy : make_bi_test(
      basic_fill({w:1024, h:1024, r:255, g: 125, b: 16}), 
      wasm_fill_memcpy({w:1024, h:1024, r:255, g: 125, b: 16})),

    fill_small_tri: (() => {
      const params = {
        w:100, h:100, r:255, g:255, b:255, 
        x1:10, y1:10, x2:75, y2:30, x3:50, y3:75 };
      return make_bi_test(wasm_tri(params), wasm_tri_simd(params))
    })(),

    small_basic_rect : (() => {
      const params = {x: 1, y:1, w:3, h:3, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_rect(params), 
        wasm_basic_rect(params))
    })(),

    small_basic_rect2 : (() => {
      const params = {x: 2, y:5, w:20, h:50, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_rect(params), 
        wasm_basic_rect(params))
    })(),


    // rect oob x
    small_basic_rect_completely_oob_on_low_x : (() => {
      const params = {x: -5, y:1, w:3, h:3, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_rect(params), 
        wasm_basic_rect(params))
    })(),

    small_basic_rect_partially_oob_on_low_x : (() => {
      const params = {x: -5, y:1, w:10, h:3, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_rect(params), 
        wasm_basic_rect(params))
    })(),

    small_basic_rect_completely_oob_on_high_x : (() => {
      const params = {x: 105, y:1, w:10, h:3, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_rect(params), 
        wasm_basic_rect(params))
    })(),

    small_basic_rect_partially_oob_on_high_x : (() => {
      const params = {x: 95, y:1, w:10, h:3, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_rect(params), 
        wasm_basic_rect(params))
    })(),


    // rect oob y
    small_basic_rect_completely_oob_on_low_y : (() => {
      const params = {x: 1, y:-5, w:3, h:10, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_rect(params), 
        wasm_basic_rect(params))
    })(),

    small_basic_rect_partially_oob_on_low_x : (() => {
      const params = {x: 1, y:-5, w:10, h:3, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_rect(params), 
        wasm_basic_rect(params))
    })(),

    small_basic_rect_completely_oob_on_high_y : (() => {
      const params = {x: 1, y:105, w:3, h:10, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_rect(params), 
        wasm_basic_rect(params))
    })(),

    small_basic_rect_partially_oob_on_high_x : (() => {
      const params = {x: 1, y:-5, w:3, h:10, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_rect(params), 
        wasm_basic_rect(params))
    })(),


   // h_line basic
   hline_basic: (() => {
      const params = {x: 1, y:1, len:3, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_line_h(params), 
        wasm_line_h(params))
    })(),

   hline_partially_oob_x_low: (() => {
      const params = {x: -5, y:1, len:10, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_line_h(params), 
        wasm_line_h(params))
    })(),

   hline_partially_oob_x_high: (() => {
      const params = {x: 95, y:1, len:10, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_line_h(params), 
        wasm_line_h(params))
    })(),

   hline_partially_oob_y_low: (() => {
      const params = {x: 1, y:-10, len:10, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_line_h(params), 
        wasm_line_h(params))
    })(),

   hline_partially_oob_y_high: (() => {
      const params = {x: 1, y:105, len:10, r:255, g: 125, b: 16, canvas_w: 100, canvas_h: 100};
      return make_bi_test(
        js_line_h(params), 
        wasm_line_h(params))
    })(),
};

if (typeof exports !== 'undefined') {
    exports.bisimulation_tests = bisimulation_tests;
}
