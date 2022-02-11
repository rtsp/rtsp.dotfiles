## shell optional behavior
shopt -s checkwinsize

## shell history control
shopt -s histappend
unset HISTCONTROL
HISTFILESIZE=100000000
HISTTIMEFORMAT="[%a %Y-%m-%d %H:%M:%S] "
HISTSIZE=2000
