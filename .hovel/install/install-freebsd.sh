#!/usr/bin/env sh

if [ -z `which doas` ]; then
  echo "This script requires \`doas\` to install some tools."
  exit 1
fi

doas pkg install\
  cmake\
  python36 py36-pip\
  node www/npm\
  tmux\
  neovim\
  fzf\
  fish\
  weechat

if [ -z `which pip` ]; then
  alias pip="pip-3.6"
fi

. ./python
. ./node
. ./rust
. ./tmux
. ./neovim
