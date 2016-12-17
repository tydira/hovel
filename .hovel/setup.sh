alias hovel=git --git-dir=~/.hovel/repo.git --work-tree=~
hovel submodule update --init
hovel update-index --assume-unchanged ~/README.md && rm ~/README.md
source ./install.sh
