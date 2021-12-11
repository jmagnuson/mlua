#!/bin/bash

set -ex

export RUST_BACKTRACE=full
export RUSTC_WRAPPER=sccache
FEATURES="lua53,serialize,async,vendored"

# From: https://github.com/rust-bitcoin/rust-secp256k1/blob/master/contrib/test.sh
#if [ "$DO_WASM" = true ]; then
    clang --version
    #CARGO_TARGET_DIR=wasm cargo install --force wasm-pack
    #printf '\n[lib]\ncrate-type = ["cdylib", "rlib"]\n' >> Cargo.toml
    #CC=clang-13 wasm-pack build -- --features="${FEATURES}"
    CC=clang-13 wasm-pack build  -- --features="${FEATURES}"
    #CC=clang-13 wasm-pack test --node -- --features="${FEATURES}"
#fi

