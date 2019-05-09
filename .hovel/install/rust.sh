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

rustup update stable nightly

rustup component add\
  rust-src\
  clippy-preview

cargo install $*\
  fd-find\
  ripgrep\
  arcus\
  exa

rustup component add --toolchain nightly\
  rust-src\
  rls-preview\
  rust-analysis

cargo +nightly install $*\
  rustfmt-nightly\
  racer
