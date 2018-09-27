#!/usr/bin/env sh

nv=$HOME/.config/nvim
if [ ! -d $nv/autoload ]; then
  mkdir -p $nv/autoload
  ln -s $nv/vim-plug/plug.vim $nv/autoload/
fi

nvim +PlugInstall +PlugUpdate +GoUpdateBinaries +qa
