const fs = require('node:fs');
const { bisimulation_tests } = require('./tests.js');

function stripPathPrefix(errorStr) {
    // Regular expression to find paths starting with a `/` and containing "_build/default"
    const pathRegex = /\/.*?_build\/default\//g;

    // Use the `replace` function to remove the unwanted parts from the paths
    return errorStr.replace(pathRegex, '');
}

async function main() {
    const walloc_wasm = fs.readFileSync("./walloc.wasm");
    const lux_wasm = fs.readFileSync("./lux.wasm");

     async function build_modules() {
        const walloc = await WebAssembly.instantiate(fs.readFileSync("./walloc.wasm"), {});
        const lux = await WebAssembly.instantiate(fs.readFileSync("./lux.wasm"), {
            runtime: walloc.instance.exports
        });

        return {walloc, lux}
    }

    let all_ok = true;

    for (let test_name in bisimulation_tests) {
        let delta = null;
        try {
            const make_test = bisimulation_tests[test_name];
            const {basic_test, advanced_test } = await make_test(build_modules);

            const before = performance.now();
            const basic_result = await basic_test();
            const advanced_result = await advanced_test();
            const after = performance.now();
            delta = after - before;

            if (basic_result.byteLength !== advanced_result.byteLength) {
                throw new Error(`byte lengths differ: (basic ${basic_result.byteLength}) (advanced ${advanced_result.byteLength})`);
            }

            for (let i = 0; i < basic_result.byteLength; i++) {
                const basic_byte = basic_result.getUint8(i);
                const advanced_byte = advanced_result.getUint8(i);

                if (basic_byte !== advanced_byte) {
                    throw new Error(`values in byte ${i} differ: (basic ${basic_byte}) (advanced ${advanced_byte})`);
                }

            }

            console.log('\033[32m✓ ' + test_name + '\033[0m ' + delta.toFixed(2) + "ms"); 
        } catch (e) {
            if (e instanceof Error) {
                e.stack = stripPathPrefix(e.stack);
            }
            let timing = delta ? " " + delta.toFixed(2) + "ms" : "";

            console.log('\033[31m✗ ' + test_name + '\033[0m' + timing); 
            console.log(e);
            all_ok = false;
        }
    }

    if (!all_ok) {
        process.exit(1);
    }
}

main()
