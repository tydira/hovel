PROMPT='$FG[015]%.$(git_prompt_info)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"

# BSD/OSX
export LSCOLORS='exfxcxdxbxbxbxbxbxbxbx'

# Linux
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=31:cd=31:su=31:sg=31:tw=31:ow=31'

# Use LS_COLORS to color ZSH path completion
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main)
ZSH_HIGHLIGHT_STYLES=(\
  default                       'fg=15'\
  unknown-token                 'fg=15'\
  reserved-word                 'fg=15'\
  alias                         'fg=15'\
  builtin                       'fg=15'\
  function                      'fg=15'\
  command                       'fg=15'\
  precommand                    'fg=15'\
  commandseparator              'fg=green'\
  hashed-command                'fg=green'\
  path                          'fg=blue'\
  globbing                      'fg=yellow'\
  history-expansion             'fg=green'\
  single-hyphen-option          'fg=magenta'\
  double-hyphen-option          'fg=magenta'\
  back-quoted-argument          'fg=green'\
  single-quoted-argument        'fg=blue'\
  double-quoted-argument        'fg=blue'\
  dollar-double-quoted-argument 'fg=green'\
  back-double-quoted-argument   'fg=green'\
  assign                        'fg=yellow'\
)
