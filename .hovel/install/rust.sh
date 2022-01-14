#!/usr/bin/env sh

url="https://sh.rustup.rs"

if [ -z "$(which rustup)" ]; then
  if [ -n "$(which curl)" ]; then
    curl $url -sSf | sh
  else
    wget -qO- $url | sh
  fi
fi

. $HOME/.cargo/env

# if [ -z "$(rustup toolchain list | grep nightly)" ]; then
#   rustup toolchain add nightly
# fi

rustup self update
# rustup update stable nightly
rustup update stable

rustup component add --toolchain stable\
  rustfmt\
  clippy\
  rust-src

cargo +stable install $*\
  cargo-edit\
  wasm-pack\
  fd-find\
  pastel\
  arcus\
  bat\
  exa

# cargo +nightly install $*\
#   rustfmt-nightly\
#   racer
