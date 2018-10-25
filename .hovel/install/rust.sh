#!/usr/bin/env sh

url=https://sh.rustup.rs

if [ -z "$(which rustup)" ]; then
  if [ -n "$(which curl)" ]; then
    curl $url -sSf | sh
  else
    wget -qO- $url | sh
  fi
fi

. $HOME/.cargo/env

rustup install nightly
rustup update stable nightly
rustup component add rust-src

rustup run nightly cargo install --force\
  rustfmt-nightly\
  racer

cargo install\
  fd-find\
  ripgrep\
  exa
