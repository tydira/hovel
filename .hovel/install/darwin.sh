#!/usr/bin/env sh

if [ -z `which brew` ]; then
  ruby -e "`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install`"
fi

brew update
brew upgrade
brew install\
  python3\
  node\
  neovim\
  tmux\
  fzf\
  fish\
  weechat

. ./python
. ./node
. ./rust
. ./tmux
. ./neovim
