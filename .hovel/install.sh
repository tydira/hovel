#!/usr/bin/env bash

# Homebrew
if [[ "`which brew`" == "" ]]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update &&
brew upgrade &&
brew install\
  python3\
  node\
  tmux\
  tig\
  vim\
  neovim/neovim/neovim\
  the_silver_searcher\
  weechat\
  zsh\
  tidy-html5\
  fzf\
  &&
brew upgrade &&

# Python
pip3 install --upgrade\
  neovim\
  flake8\
  &&

# Node
npm update -g &&
npm install -g npm-check-updates &&
npm upgrade -g &&

# Hovel
alias hovel='git --git-dir=.hovel.git --work-tree=.'
hovel config --local status.showUntrackedFiles no
hovel update-index --assume-unchanged README.md && rm README.md &&
hovel submodule update --init --recursive &&

# Vim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&
nvim +PlugInstall +PlugUpdate +GoUpdateBinaries +qa
