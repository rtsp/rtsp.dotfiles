## netstat - shorthand aliases
alias n='ss -tunlpH | column -t'

## ps/df/free - shorthand aliases
alias p='ps axf'
alias pp='ps auxf'
alias d='df -Th'
alias di='df -Thi'
alias f='free -lm'
alias h='history | tail -n 100'

## mount/lsblk - shorthand aliases
alias m='mount | column -t'
which blkid lsblk > /dev/null 2>&1 && alias bls='blkid | sort; echo; lsblk -o NAME,FSTYPE,LABEL,PARTLABEL,SIZE,MOUNTPOINT'
