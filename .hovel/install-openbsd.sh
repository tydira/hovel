#!/usr/bin/env bash

doas pkg_add\
  git\
  fish\
  neovim\
  py3-neovim\
  py3-pip\
  cmake\
  node\
  rust\
  weechat\
&&

pip3.6 install --upgrade\
  neovim\
  flake8\
&&
