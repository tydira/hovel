#!/usr/bin/env sh

alias hovel="git --git-dir=$HOME/.hovel/repo.git --work-tree=$HOME"

cd $HOME

hovel config --local status.showUntrackedFiles no
hovel submodule update --init
hovel checkout $*

if [ -e README.md ]; then
  hovel update-index --assume-unchanged README.md
  mv README.md ~/.hovel/
fi

chsh -s /usr/local/bin/fish
