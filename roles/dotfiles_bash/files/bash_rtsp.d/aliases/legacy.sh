## pico/tailf/vim - add missing aliases
which pico > /dev/null 2>&1 || alias pico='nano'
which tailf > /dev/null 2>&1 || alias tailf='tail -f'
which vim > /dev/null 2>&1 || alias vim='vi'

which egrep > /dev/null 2>&1 || alias egrep='grep -E'
which fgrep > /dev/null 2>&1 || alias egrep='grep -F'
