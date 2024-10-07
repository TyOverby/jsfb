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
    const region_ptr = calloc(n * 3);
    const region_dv = new DataView(walloc.instance.exports.memory.buffer, region_ptr, n * 3); 
    const ptr = region_ptr + n;
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

            const [nr, ng, nb] = f({x, y, offset, r, g, b});
            dv.setUint8(offset + 0, nr);
            dv.setUint8(offset + 1, ng);
            dv.setUint8(offset + 2, nb);
            dv.setUint8(offset + 3, 255);
        }
    }
}

const basic_fill = ({w, h, r, g, b}) => (params) => {
    const {calloc, walloc, lux} = params;
    const { region_dv, dv } = overallocate_img_buf(params, w, h);
    map_over_image(dv, w, h, function(){
        return [r, g, b];
    });
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

    fill_1x1_memcpy : make_bi_test(
      basic_fill({w:1, h:1, r:255, g: 125, b: 16}), 
      wasm_fill_memcpy({w:1, h:1, r:255, g: 125, b: 16})),
    fill_8x8_memcpy : make_bi_test(
      basic_fill({w:8, h:8, r:255, g: 125, b: 16}), 
      wasm_fill_memcpy({w:8, h:8, r:255, g: 125, b: 16})),
    fill_1024x1024_memcpy : make_bi_test(
      basic_fill({w:1024, h:1024, r:255, g: 125, b: 16}), 
      wasm_fill_memcpy({w:1024, h:1024, r:255, g: 125, b: 16})),
};

if (typeof exports !== 'undefined') {
    exports.bisimulation_tests = bisimulation_tests;
}
