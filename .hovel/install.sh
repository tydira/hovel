#!/usr/bin/env sh

cd $HOME

alias hovel="git --git-dir=.hovel/repo.git --work-tree=$HOME"

repo config --local --unset core.bare
repo config --local core.worktree $HOME
repo config --local status.showUntrackedFiles no
repo submodule update --init

if [ -e "README.md" ]; then
  repo update-index --assume-unchanged README.md
  mv README.md .hovel/
fi

if [ -z "$(pgrep ssh-agent)" ]; then
  eval $(ssh-agent) > /dev/null 2>&1
fi

if [ -n "$1" ]; then
  script=$1
else
  script=$(uname -s | awk '{print tolower($0)}')
  if [ $script = "linux" ]; then
    script=$(lsb_release -is | awk '{print tolower($0)}')
  fi
fi

install=$HOME/.hovel/install/$script.sh
if [ -e "$install" ]; then
  echo "Running '$install'" && sleep 1
  sh $install
else
  echo "Couldn't find '$install' to run"
fi

newsh=$(which fish)
if [ $? -a "$SHELL" != "$newsh" ]; then
  echo "Changing shell to '$newsh'"
  chsh -s $newsh
fi

tic ~/.hovel/tmux-256color-italic.terminfo
