#!/usr/bin/env sh

if [ -z `which doas` ]; then
  echo "This script requires \`doas\` to install some tools."
  exit 1
fi

doas pkg install\
  cmake\
  node\
  www/npm\
  neovim\
  tmux\
  fish\
  fzf\
  python36\
  py36-pip\
  weechat

if [ -z `which pip` ]; then
  alias pip="pip-3.6"
fi

pip install --user --upgrade\
  pip\
  virtualenv\
  neovim\
  flake8

npm config set prefix $HOME/.local
npm update -g
npm install -g\
  npm\
  yarn\
  npm-check-updates\
  eslint\
  prettier

if [ -z `which rustup` ]; then
  curl https://sh.rustup.rs -sSf | sh
fi

. $HOME/.cargo/env

rustup update
rustup install nightly
rustup component add rust-src
rustup run nightly cargo install --force\
  rustfmt-nightly\
  racer

cargo install --force\
  fd-find\
  ripgrep\
  exa

tpm=$HOME/.tmux/plugins/tpm/bin
$tpm/install_plugins
$tpm/update_plugins all
$tpm/clean_plugins

nv=$HOME/.config/nvim
if [ ! -d $nv/autoload ]; then
  mkdir -p $nv/autoload
  ln -s $nv/vim-plug/plug.vim $nv/autoload/
fi

nvim +PlugInstall +PlugUpdate +GoUpdateBinaries +qa
