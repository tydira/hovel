#!/usr/bin/env sh

tpm=$HOME/.tmux/plugins/tpm/bin

$tpm/install_plugins
$tpm/update_plugins all
$tpm/clean_plugins
