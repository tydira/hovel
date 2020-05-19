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

if [ -z "$(rustup toolchain list | grep nightly)" ]; then
  rustup toolchain add nightly
fi

rustup self update
rustup update stable nightly

rustup component add --toolchain stable\
  rust-src\
  rls\
  clippy\
  rust-analysis

rustup component add --toolchain nightly\
  rust-src\
  rls\
  clippy\
  rust-analysis

cargo +stable install $*\
  fd-find\
  ripgrep\
  pastel\
  arcus\
  exa\
  rustfmt-nightly\
  racer

cargo +nightly install $*\
  rustfmt-nightly\
  racer
