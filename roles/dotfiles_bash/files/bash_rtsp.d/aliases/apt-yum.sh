## apt/yum (package manager) - shorthand aliases
if [ $EUID -eq 0 ]; then
  if which apt > /dev/null 2>&1; then
    alias qu='apt update'
    alias qi='apt --no-install-recommends install'
    alias qr='apt remove'
    alias qp='apt purge'
    alias qg='apt upgrade'
    alias qs='apt search'
  elif which aptitude > /dev/null 2>&1; then
    alias qu='aptitude update'
    alias qi='aptitude --without-recommends install'
    alias qr='aptitude remove'
    alias qp='aptitude purge'
    alias qg='aptitude upgrade'
  elif which apt-get > /dev/null 2>&1; then
    alias qu='apt-get update'
    alias qi='apt-get --no-install-recommends install'
    alias qr='apt-get remove'
    alias qp='apt-get purge'
    alias qg='apt-get upgrade'
  elif which yum > /dev/null 2>&1; then
    alias qu='yum check-update'
    alias qi='yum install'
    alias qp='yum remove'
    alias qg='yum update'
  fi
fi

## dpkg/rpm (package manager) - shorthand aliases
if which apt-cache > /dev/null 2>&1; then
  alias qc='apt-cache search'
  alias qd='apt-cache depends'
  alias qpl='apt-cache policy'
elif which yum > /dev/null 2>&1; then
  alias qs='yum search'
  alias qc='yum -C search'
  alias qd='yum -C deplist'
fi

if which dpkg > /dev/null 2>&1; then
  alias ql='dpkg -l'
  alias qll='dpkg -L'
  alias qls='dpkg -S'
elif which rpm > /dev/null 2>&1; then
  alias ql='rpm -qa'
  alias qll='rpm -ql'
  alias qls='rpm -qf'
fi
