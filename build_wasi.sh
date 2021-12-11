#!/bin/bash

set -ex

export WASMTIME_BACKTRACE_DETAILS=1
export RUST_BACKTRACE=full
export RUSTC_WRAPPER=sccache
#FEATURES="lua53,serialize,async,vendored"
#FEATURES="lua53,serialize,vendored"
FEATURES="lua53,serialize,vendored,macros,module"

#cargo build --target wasm32-wasi --features="${FEATURES}"
#cargo build --target wasm32-wasi --features="${FEATURES}" --tests

# works
#cargo wasi run --example userdata --features="${FEATURES}" -vv

# unreachable error
# cargo wasi run --example guided_tour --features="${FEATURES}" -vv

cargo wasi run --example serialize --features="${FEATURES}" -vv
