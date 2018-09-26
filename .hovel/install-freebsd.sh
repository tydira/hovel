#!/usr/bin/env sh

# Tools not installed yet.
# fzf, the_silver_searcher tidy-html5 tig yarn

if [ -z `which doas` ]; then
  echo "This script uses doas and pkg to install tools."
  exit 1
fi

doas pkg install\
  cmake\
  node\
  www/npm\
  neovim\
  tmux\
  fish\
  python36\
  py36-pip\
  weechat

pip-3.6 install --user --upgrade\
  pip\
  virtualenv\
  neovim\
  flake8

npm config set prefix ~/.local
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

if [ -z `which rustfmt` ]; then
  rustup run nightly cargo install rustfmt-nightly
fi

if [ -z `which racer` ]; then
  rustup run nightly cargo install racer
  rustup component add rust-src
fi

if [ -z `which exa` ]; then
  cargo install exa
fi

if [ -z `which fd-find` ]; then
  cargo install fd-find
fi

if [ -z `which ripgrep` ]; then
  cargo install ripgrep
fi

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&
nvim +PlugInstall +PlugUpdate +GoUpdateBinaries +qa
