#!/usr/bin/env sh

npm config set prefix $HOME/.local
npm update -g
npm install -g\
  npm\
  yarn\
  npm-check-updates\
  eslint\
  prettier
