#!/usr/bin/env sh

if [ -z "$(which doas)" ]; then
  echo "This script requires 'doas' to install some tools."
  exit 1
fi

doas pkg update
doas pkg upgrade
doas pkg install\
  cmake\
  fish\
  fzf\
  neovim\
  nmap\
  node www/npm\
  python36 py36-pip\
  rtorrent\
  tmux\
  weechat

if [ -z "$(which pip)" ]; then
  alias pip="pip-3.6"
fi

install=$HOME/.hovel/install/

. $install/python.sh
. $install/node.sh
. $install/rust.sh
. $install/tmux.sh
. $install/neovim.sh
