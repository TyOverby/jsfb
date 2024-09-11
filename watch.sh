#!/bin/bash
fswatch main.wat | xargs -L1 ./build.sh
