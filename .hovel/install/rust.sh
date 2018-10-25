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

rustup toolchain add nightly
rustup update stable nightly

rustup component add --toolchain nightly\
  rust-src\
  rls-preview\
  rust-analysis

cargo +nightly install\
  rustfmt-nightly\
  racer

cargo install\
  fd-find\
  ripgrep\
  exa
