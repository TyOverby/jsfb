#!/bin/bash
fswatch main.wat departure/departure.wat | xargs -L1 ./build.sh
