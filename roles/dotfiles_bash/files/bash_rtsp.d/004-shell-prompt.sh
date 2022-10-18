## user@host template for prompt and window title
if [ $EUID -eq 0 ]; then
  PS1_UserHost='\h'
else
  PS1_UserHost='\u@\h'
fi

## prompt color - enable a colored prompt, if the terminal has the capability
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  PS1="\[\e[01;93m\]\t\[\e[m\] \[\e[01;32m\]${PS1_UserHost}\[\e[m\]:\[\e[01;96m\]\w\[\e[m\]\\$ "
else
  PS1="${PS1_UserHost}:\w\\$ "
fi

## window title - if this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
  PS1="\[\e]0;${debian_chroot:+($debian_chroot)}${PS1_UserHost}: \w\a\]$PS1"
  ;;
*)
  ;;
esac

unset \
  PS1_UserHost
