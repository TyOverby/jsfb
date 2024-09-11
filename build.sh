#!/bin/bash

set -euo pipefail

./binaryen/bin/wasm-as main.wat \
    --debuginfo \
    --enable-simd \
    --enable-multivalue \
    --source-map main.wasm.map \
    --source-map-url "./main.wasm.map"

./binaryen/bin/wasm-as ./departure/departure.wat -o ./departure.wasm \
    --debuginfo \
    --enable-simd \
    --enable-multivalue \
    --source-map departure.wasm.map \
    --source-map-url "./departure.wasm.map"

./binaryen/bin/wasm-merge \
    ./main.wasm lux \
    ./departure.wasm departure \
    -o ./main-merged.wasm \
    --enable-simd \
    --enable-multivalue

# cp main-merged.wasm main.opt.wasm
./binaryen/bin/wasm-opt main-merged.wasm --enable-simd --enable-multivalue -O3 -o main.opt.wasm
echo "good!"
