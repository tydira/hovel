#!/usr/bin/env sh

which sudo
if [ ! $? ]; then
  echo "This script requires \`sudo\` to install some tools."
  exit 1
fi

wget -qO- https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo apt update
sudo apt upgrade
sudo apt install -y\
  cmake\
  python3 python3-pip\
  nodejs\
  tmux\
  fish\
  neovim\
  fzf\
  weechat

which pip
if [ ! $? ]; then
  alias pip="pip3"
fi

install=$HOME/.hovel/install/

. $install/python.sh
. $install/node.sh
. $install/rust.sh
. $install/tmux.sh
. $install/neovim.sh
