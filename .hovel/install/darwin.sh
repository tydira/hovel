#!/usr/bin/env sh

if [ -z "$(which brew)" ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

brew install\
  bat\
  cmake\
  eth-p/software/bat-extras\
  fish\
  fzf\
  ipfs\
  neovim\
  nmap\
  node\
  python3\
  ripgrep\
  tmux\
  weechat\
  wget\
  youtube-dl\
  thefuck

brew cask install\
  alacritty\
  google-chrome\
  docker

if [ -z "$(which pip)" ]; then
  alias pip="pip3"
fi

install=$HOME/.hovel/install/

. $install/python.sh
. $install/node.sh
. $install/rust.sh
. $install/tmux.sh
. $install/neovim.sh
