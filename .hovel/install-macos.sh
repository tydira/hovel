#!/usr/bin/env sh

# Homebrew
if [ -n `which brew` ]; then
  ruby -e "`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install`"
fi

# Rust
if [ -n `which rustup` ]; then
  curl https://sh.rustup.rs -sSf | sh
fi

rustup update
rustup install nightly

if [ -n `which rustfmt` ]; then
  rustup run nightly cargo install rustfmt-nightly
fi

if [ -n `which racer` ]; then
  rustup run stable cargo install racer
  rustup component add rust-src
fi

brew update &&
brew upgrade &&
brew install\
  exa\
  fzf\
  fd\
  ripgrep\
  neovim\
  node\
  python3\
  the_silver_searcher\
  tidy-html5\
  tig\
  tmux\
  weechat\
  yarn\
  fish\
  &&
brew upgrade &&

# Python
pip3 install --upgrade\
  pip\
  neovim\
  flake8\
  &&

# Node
npm update -g &&
npm install -g npm-check-updates &&
npm upgrade -g
