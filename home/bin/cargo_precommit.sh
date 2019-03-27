set -ex

export RUST_BACKTRACE=full
ulimit -c unlimited
cargo fmt --all
cargo build --all
cargo test --all
#cargo audit
cargo clippy --all -- --deny clippy::all
