fish_vi_key_bindings

set fish_user_paths $HOME/.local/bin /usr/local/opt/node*/bin /usr/local/opt/python/libexec/bin $HOME/.cargo/bin $HOME/.config/npm/bin $HOME/Library/Python/*/bin
set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/library/

set fish_term24bit 1
set fish_greeting

set -x EDITOR nvim
set -x FZF_DEFAULT_COMMAND (which rg) --files
set -x FZF_DEFAULT_OPTS "--height=50% --ansi --preview-window 'right:60%' --preview-window noborder --preview 'bat --theme=base16 --color=never --style=grid --line-range :300 {}'"

alias f=fzf
alias ls='exa'
alias v='nvim'
alias vs='nvim -S .session.vim'
alias httpd='python -m http.server 9000'
alias mirror='wget --mirror --convert-links --adjust-extension --page-requisites --no-parent'

alias g='git'
alias ga='git add'
alias gc='git commit'
alias gl='git log'
alias go='git clone'
alias gh='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gp='git push'
alias gs='git status'
alias gm='git merge'
