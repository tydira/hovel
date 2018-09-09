#!/usr/bin/env bash

# Homebrew
if [[ "`which brew`" == "" ]]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Rust
if [[ "`which rustup`" == "" ]]; then
  curl https://sh.rustup.rs -sSf | sh
fi

rustup update
rustup install nightly

if [[ "`which rustfmt`" == "" ]]; then
  rustup run nightly cargo install rustfmt-nightly
fi

if [[ "`which racer`" == "" ]]; then
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
npm upgrade -g &&

# Hovel
alias hovel="git --git-dir=$HOME/.hovel/repo.git --work-tree=$HOME"
hovel config --local status.showUntrackedFiles no
hovel update-index --assume-unchanged README.md && mv README.md ~/.hovel/ &&
hovel submodule update --init --recursive &&

# Vim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&
nvim +PlugInstall +PlugUpdate +GoUpdateBinaries +qa
