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

pip-3.6 install --user --upgrade\
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
  ripgrep
  exa\

tdr=$HOME/.tmux/plugins/tpm/bin
$tdr/install_plugins
$tdr/update_plugins all
$tdr/clean_plugins

nvd=$HOME/.config/nvim
if [ ! -d $nvd/autoload ]; then
  mkdir -p $nvd/autoload
  ln -s $nvd/vim-plug/plug.vim $nvd/autoload/
fi

nvim +PlugInstall +PlugUpdate +GoUpdateBinaries +qa
