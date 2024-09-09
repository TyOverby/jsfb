#!/bin/bash

set -euo pipefail

./binaryen/bin/wasm-as main.wat \
    --debuginfo \
    --enable-simd \
    --enable-multivalue \
    --source-map main.wasm.map \
    --source-map-url "./main.wasm.map"

cp main.wasm main.opt.wasm
# ./binaryen/bin/wasm-opt main.wasm --enable-simd --enable-multivalue -O3 -o main.opt.wasm
echo "good!"
