## ufw - shorthand aliases
if which ufw > /dev/null 2>&1; then
  alias ua='ufw show added'
  alias ul='ufw show listening'
  alias us='ufw status'
  alias uv='ufw status verbose'
  alias un='ufw status numbered'
fi
