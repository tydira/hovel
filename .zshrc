# For some reason the oh my zsh variable needs to be called ZSH
ZSH=$HOME/.oh-my-zsh

# Every other way of doing this sucks worse
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Theme of choice
ZSH_THEME="enviro"

# Stop pestering me
DISABLE_AUTO_UPDATE=true

# List of plugins
plugins=(\
  osx\
  npm\
  pip\
  django\
  vi-mode\
  colored-man\
  history-substring-search\
  zsh-syntax-highlighting\
)

# Run oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Of course.
export EDITOR=vim

# Reset our tmux var for each shell so we can embed
export TMUX=''

export FLUKY_PATH="$HOME/.config/fluky"

# Set the GOPATH only if it's not set
[ -z "$GOPATH" ] && export GOPATH="$HOME/.config/go"
export GOBIN="$HOME/.config/go/bin"

# Add a bunch of crap to PATH
export PATH="\
$GOPATH/bin:\
${HOME}/.bin:\
/usr/local/opt/go/libexec/bin:\
./node_modules/.bin:\
/usr/local/bin:\
/Applications/Postgres.app/Contents/Versions/9.3/bin:\
$PATH"

# Useful aliases
alias hovel='git --git-dir=$HOME/.hovel.git --work-tree=$HOME'
alias mvp='mvim +CtrlP &>/dev/null'
alias mvs='mvim -S .Session.vim &>/dev/null'
alias v='nvim'
alias vi='vim'
alias vp='vim +CtrlP'
alias vs='vim -S .Session.vim'
alias ka='killall'
alias bwd='basename `pwd`'
alias dsdie='find . -name .DS_Store -type f -exec rm {} \;'
alias y='youtube-dl'
alias g='git'
alias gc='git commit'
alias gl='git clone'
alias gh='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gp='git push'
alias gst='git status'

realpath() { for f in "$@"; do echo ${f}(:A); done }

# Disable ^s and ^q binds
stty start undef stop undef

# Sweet pushd/popd/path history
setopt autopushd pushdminus pushdsilent pushdtohome

# Disable this because it breaks the breadcrumb effect
unsetopt pushdignoredups

# Correction annoys me
unsetopt correct_all

# Who would call this a feature?
unsetopt share_history

# Enable reverse completion with shift-tab
bindkey '^[[Z' reverse-menu-complete

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
