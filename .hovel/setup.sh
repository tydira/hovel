alias hovel="git --git-dir=$HOME/.hovel/repo.git --work-tree=$HOME"
hovel submodule update --init
hovel update-index --assume-unchanged $HOME/README.md && rm $HOME/README.md
source ~/.hovel/install.sh
