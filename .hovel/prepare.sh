#!/usr/bin/env sh

alias hovel="git --git-dir=$HOME/.hovel/repo.git --work-tree=$HOME"

cd $HOME

hovel config --local status.showUntrackedFiles no
hovel update-index --assume-unchanged README.md
hovel submodule update --init
hovel checkout

if [ -e README.md ]; then
  mv README.md ~/.hovel/
fi
