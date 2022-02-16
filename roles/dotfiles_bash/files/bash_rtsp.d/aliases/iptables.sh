## iptables - shorthand aliases
which iptables-save > /dev/null 2>&1 && alias ips='iptables-save'
which iptables > /dev/null 2>&1 && alias ipl='iptables -nvL --line-numbers'
