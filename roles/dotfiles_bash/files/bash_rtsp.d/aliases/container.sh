## docker - shorthand aliases
if which docker > /dev/null 2>&1; then
  alias dps='docker ps --format "table {{.Image}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}"'
  alias dex='docker exec -it'
  alias dils='docker image ls'
  alias dnls='docker network ls'
  alias dvls='docker volume ls'
fi

## crictl - shorthand aliases
if which crictl > /dev/null 2>&1; then
  alias cps='crictl ps'
  alias cex='crictl exec -it'
  alias cils='crictl image ls'
fi
