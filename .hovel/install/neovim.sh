#!/usr/bin/env sh

nvc=$HOME/.config/nvim
if [ ! -d $nvc/autoload ]; then
  mkdir -p $nvc/autoload
  ln -s $nvc/vim-plug/plug.vim $nvc/autoload/
fi

nvim\
  +PlugInstall\
  +PlugUpdate\
  +UpdateRemotePlugins\
  +GoUpdateBinaries\
  +qa
