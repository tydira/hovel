#!/usr/bin/env sh

if [ -z "$(which brew)" ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade
brew install\
  cmake\
  python3\
  node\
  neovim\
  tmux\
  fzf\
  fish\
  weechat

if [ -z "$(which pip)" ]; then
  alias pip="pip3"
fi

install=$HOME/.hovel/install/

. $install/python.sh
. $install/node.sh
. $install/rust.sh
. $install/tmux.sh
. $install/neovim.sh
