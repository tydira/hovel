#!/usr/bin/env sh

cd $HOME
alias hovel="git --git-dir=.hovel/repo.git --work-tree=."

hovel config --local status.showUntrackedFiles no
hovel submodule update --init

if [ -e README.md ]; then
  hovel update-index --assume-unchanged README.md
  mv README.md .hovel/
fi

os=`uname -s | awk '{print tolower($0)}'`
install=$HOME/.hovel/install/$os.sh

if [ -e $install ]; then
  echo "Running '$install'..." && sleep 5
  sh $install

  echo "Changing shell to '/usr/local/bin/fish'"
  chsh -s /usr/local/bin/fish
else
  echo "Couldn't find '$install' to run"
fi
