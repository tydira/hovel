#!/usr/bin/env sh

# Tools not installed yet.
# fzf, the_silver_searcher tidy-html5 tig yarn

if [ -z `which doas` ]; then
  echo "This script uses doas and pkg to install tools."
  exit 1
fi

doas pkg install\
  cmake\
  node\
  www/npm\
  neovim\
  tmux\
  fish\
  python36\
  py36-pip\
  weechat\
&&

pip-3.6 install --user --upgrade\
  pip\
  neovim\
  flake8\
&&

if [ -n `which rustup` ]; then
  curl https://sh.rustup.rs -sSf | sh
fi

rustup update
rustup install nightly

if [ -n `which rustfmt` ]; then
  rustup run nightly cargo install rustfmt-nightly
fi

if [ -n `which racer` ]; then
  rustup run nightly cargo install racer
  rustup component add rust-src
fi

if [ -n `which exa` ]; then
  cargo install exa
fi

if [ -n `which fd-find` ]; then
  cargo install fd-find
fi

if [ -n `which ripgrep` ]; then
  cargo install ripgrep
fi
