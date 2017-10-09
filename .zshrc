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
  rust\
  pip\
  django\
  vi-mode\
  colored-man-pages\
  history-substring-search\
  zsh-syntax-highlighting\
)

# Run oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Of course.
export EDITOR=nvim

# Bar shaped input cursor.
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1

# Set the GOPATH if it's not set
[ -z "$GOPATH" ] && export GOPATH="$HOME/.config/go"
export GOBIN="$HOME/.config/go/bin"

# Add a bunch of crap to PATH
export PATH="\
$GOPATH/bin:\
$HOME/.bin:\
/usr/local/opt/go/libexec/bin:\
./node_modules/.bin:\
/usr/local/bin:\
/Applications/Postgres.app/Contents/Versions/9.3/bin:\
$HOME/.cargo/bin:\
$PATH"

# Useful aliases
alias hovel='git --git-dir=$HOME/.hovel/repo.git --work-tree=$HOME'
alias ls='exa'
alias v='nvim'
alias vim='nvim'
alias vs='nvim -S Session.vim'
alias dsdie='find . -name .DS_Store -type f -exec rm {} \;'
alias g='git'
alias gc='git commit'
alias gl='git clone'
alias gh='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gp='git push'
alias gs='git status'

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

capture-enter () {
  if [[ -z $BUFFER ]]
  then
    echo
    exa
  else
    zle accept-line
  fi
}
zle -N capture-enter
bindkey "^M" capture-enter

eval $(thefuck --alias)
