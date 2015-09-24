#
# bashrc
#

# Prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:\1/'
}
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(parse_git_branch)\$ '

# Default editor
export EDITOR=/usr/bin/vim

# Aliases
alias ..="cd .."                              # Go up one directory
alias ...="cd ../.."                          # Go up two directories
alias ls="ls -a"                              # Show hidden
alias la="ls -AF"                             # Compact view, show hidden
alias ll="ls -lFh"                            # Show hidden, long view
alias rm="rm -i"                              # Are you sure?
alias mv="mv -i"                              # Are you sure?
alias free="free -m"                          # Show memory usage in megabytes
alias rmpyc="find . -name '*.pyc' -delete"    # Remove .PYC files.
alias ping="ping -c 5"                        # Pings with 5 packets, not unlimited
alias df="df -h"                              # Disk free, in gigabytes, not bytes
alias du="du -h -c"                           # Calculate total disk usage for a folder
alias wget="wget --convert-links -r"
alias reload="source ~/.bashrc; source ~/.bash_profile"

# Python
alias prs="python -m SimpleHTTPServer"        # Simple python server

# Screen
export TERM=screen

# TCP Flow
alias flow_referrers="sudo tcpflow -c -i lo tcp port 80 | grep Referer:"
alias flow_from="sudo tcpflow -c -i lo tcp port 80 | grep From:"
alias flow_agent="sudo tcpflow -c -i lo tcp port 80 | grep User-Agent:"
alias flow_location="sudo tcpflow -c -i lo tcp port 80 | grep Location:"
alias flow_location="sudo tcpflow -c -i lo tcp port 80 | grep X-Real-IP:"
