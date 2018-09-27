#!/usr/bin/env sh

if [ -z `which rustup` ]; then
  curl https://sh.rustup.rs -sSf | sh
fi

. $HOME/.cargo/env

rustup update
rustup install nightly
rustup component add rust-src
rustup run nightly cargo install --force\
  rustfmt-nightly\
  racer

cargo install --force\
  fd-find\
  ripgrep\
  exa
