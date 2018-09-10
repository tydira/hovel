#!/usr/bin/env sh

alias hovel="git --git-dir=$HOME/.hovel/repo.git --work-tree=$HOME"
hovel config --local status.showUntrackedFiles no
hovel update-index --assume-unchanged README.md && mv README.md ~/.hovel/ &&

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&
nvim +PlugInstall +PlugUpdate +GoUpdateBinaries +qa
