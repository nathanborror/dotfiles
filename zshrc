# Prompt
PROMPT='%F{cyan}%1~/ %F{magenta}$%f '

# Default editor
export EDITOR=/usr/bin/vim

# Aliases
alias ..="cd .."                              # Go up one directory
alias ls="ls -a"                              # Show hidden
alias la="ls -AF"                             # Compact view, show hidden
alias ll="ls -lFh"                            # Show hidden, long view
alias rm="rm -i"                              # Are you sure?
alias mv="mv -i"                              # Are you sure?
alias ping="ping -c 5"                        # Pings with 5 packets, not unlimited
alias df="df -h"                              # Disk free, in gigabytes, not bytes
alias du="du -h -c"                           # Calculate total disk usage for a folder
alias wget="wget --convert-links -r"
alias reload="source ~/.zshrc; source ~/.zprofile"

# TCP Flow
alias flow_referrers="sudo tcpflow -c -i lo tcp port 80 | grep Referer:"
alias flow_from="sudo tcpflow -c -i lo tcp port 80 | grep From:"
alias flow_agent="sudo tcpflow -c -i lo tcp port 80 | grep User-Agent:"
alias flow_location="sudo tcpflow -c -i lo tcp port 80 | grep Location:"
alias flow_location="sudo tcpflow -c -i lo tcp port 80 | grep X-Real-IP:"
