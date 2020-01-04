#!/bin/bash -ex

# Disable sccache
export RUSTC_WRAPPER=

cargo install sccache
rustup component add rustfmt
rustup component add clippy
cargo install cargo-audit
