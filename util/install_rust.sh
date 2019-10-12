#!/bin/bash -ex

# Disable sccache
export RUSTC_WRAPPER=

cargo install sccache
rustup component add rustfmt-preview
rustup component add clippy-preview
cargo install cargo-audit
