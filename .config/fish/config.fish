set -x EDITOR nvim
set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src/
# set -x LIBRARY_PATH /usr/local/lib

# Useful aliases
alias hovel='git --git-dir=$HOME/.hovel/repo.git --work-tree=$HOME'
alias ls='exa'

alias v='nvim'
alias vim='nvim'
alias vs='nvim -S Session.vim'

alias g='git'
alias gc='git commit'
alias gl='git clone'
alias gh='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gp='git push'
alias gs='git status'
