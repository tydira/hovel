#!/usr/bin/env sh

url=https://sh.rustup.rs

which rustup
if [ ! $? ]; then
  which curl
  if [ $? ]; then
    curl $url -sSf | sh
  else
    wget -qO- $url | sh
  fi
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
