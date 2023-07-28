## lesspipe - make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/bash lesspipe)"

## less - enable color support
export LESS="-R ${LESS}"

## gcc - colored GCC warnings and errors
which gcc > /dev/null 2>&1 && export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

## ls - enable color support of ls and also add handy aliases
export LS_OPTIONS='-hFT 0 --time-style=long-iso'
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  export LS_OPTIONS="${LS_OPTIONS} --color=auto"
fi
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias la='ls $LS_OPTIONS -la'

## grep/diff - enable color support
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'

## ip - enable color support
alias ip='ip --color=auto'
