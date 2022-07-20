## git - shorthand aliases
if which git > /dev/null 2>&1; then
  alias gs='git status'
  alias gd='git diff'
  alias gds='git diff --staged'
  alias gb='git branch'
  alias gba='git branch -a'
  alias gbav='git branch -avv'
  alias gl='git log --oneline --graph -n 30 --decorate'
  alias gla='git log --oneline --graph -n 30 --decorate --all'
  alias gls='git log --oneline --graph -n 10 --decorate --stat'
  alias gld='git diff HEAD~1 HEAD'
  alias grv='git remote -v'
fi
