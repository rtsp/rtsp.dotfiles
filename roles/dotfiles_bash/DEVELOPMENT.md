# Development Notes - Ansible `rtsp.dotfiles.dotfiles_bash`


## Decision Choices

### Multiple approaches in task `Adding ~/.bash_rtsp.d entry point to .bashrc`

```
## 1. Simple
source <(cat ~/.bash_rtsp.d/*.sh 2>/dev/null)

## 2. Check for executable bit
for _bash_rtsp_sh in $(find ~/.bash_rtsp.d -type f -name "*.sh" -executable | sort -n); do source ${_bash_rtsp_sh}; done

## 3. Legacy way
if [ -d ~/.bash_rtsp.d ]; then for _bash_rtsp_source in ~/.bash_rtsp.d/*.sh; do [ -r "$_bash_rtsp_source" ] && source $_bash_rtsp_source; done; unset _bash_rtsp_source; fi
```

Selection: 1. Simple

Reason: To support non-POSIX permission disk such as NTFS in WSL
