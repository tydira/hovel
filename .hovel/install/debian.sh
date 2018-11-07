#!/usr/bin/env sh

if [ "$(lsb_release -rs)" != "sid" ]; then
  echo "This script is written for Debian Sid."
  exit 2
fi

if [ -z "$(which sudo)" ]; then
  echo "This script requires 'sudo' to install some tools."
  exit 1
fi

wget -qO- https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo apt update
sudo apt upgrade
sudo apt install -y\
  cmake\
  fish\
  fzf\
  neovim\
  nmap\
  nodejs\
  python3 python3-pip\
  rtorrent\
  tmux\
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
