export PATH="${HOME}/.bin:/usr/local/bin:/usr/local/share/npm/bin:./node_modules/.bin:${PATH}"
export PS1="\`if [ \$? = 0 ]; then echo \[\e[01\;32m\]\W\[\e[0m\]; else echo \[\e[31m\]\W\[\e[0m\]; fi\` "
export EDITOR=`which vim`
export SVN_EDITOR="$EDITOR"
export GREP_OPTIONS="--exclude=\*.svn\*"

alias vi='vim'
alias tm='tmux'

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

set -o vi

clear
