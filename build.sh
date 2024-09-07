#!/bin/bash

set -euo pipefail

./binaryen/bin/wasm-as main.wat \
    --debuginfo \
    --enable-simd \
    --source-map main.wasm.map \
    --source-map-url "./main.wasm.map"

#cp main.wasm main.opt.wasm
./binaryen/bin/wasm-opt main.wasm --enable-simd -O3 -o main.opt.wasm
echo "good!"
