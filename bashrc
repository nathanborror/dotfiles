#
# bashrc
#

if [ ! $WORKING ]; then
  WORKING='/home/nathan'                      # Define working directory
fi

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
alias wk="cd $WORKING"
alias wget="wget --convert-links -r"
alias mdl="cd $WORKING/modules"
alias src="cd $WORKING/source"
alias django="cd $WORKING/source/django"
alias reload="source ~/.bashrc; source ~/.bash_profile"

# Aptitude
alias update="sudo aptitude update"
alias upgrade="sudo aptitude safe-upgrade"

# Apache
alias apache_restart="sudo /etc/init.d/apache2 restart"
alias apache_reload="sudo /etc/init.d/apache2 reload"
alias apache_start="sudo /etc/init.d/apache2 start"
alias apache_stop="sudo /etc/init.d/apache2"
alias apache_log="sudo vim /var/log/apache2/error.log"

# Django
alias da="$WORKING/modules/django/bin/django-admin.py"
alias rs="da runserver 0.0.0.0:8000 --settings=$DJANGO_SETTINGS_MODULE"
alias sdb="da syncdb --settings=$DJANGO_SETTINGS_MODULE"
alias shell="da shell --settings=$DJANGO_SETTINGS_MODULE"
alias test="da test --settings=$DJANGO_SETTINGS_MODULE"

# MySQL
alias mysql_restart="sudo /etc/init.d/mysql restart"
alias mysql_start="sudo /etc/init.d/mysql start"
alias mysql_stop="sudo /etc/init.d/mysql stop"

# Postgres
alias postgresql_restart="sudo /etc/init.d/postgresql-8.3 restart"

# Python
alias prs="python -m SimpleHTTPServer"        # Simple python server
export PYTHONPATH=$WORKING/modules:$PYTHONPATH

# System path
export PATH=$WORKING/bin:$WORKING/source/django/django/bin:$PATH

# Screen
export TERM=screen

# TCP Flow
alias flow_referrers="sudo tcpflow -c -i lo tcp port 80 | grep Referer:"
alias flow_from="sudo tcpflow -c -i lo tcp port 80 | grep From:"
alias flow_agent="sudo tcpflow -c -i lo tcp port 80 | grep User-Agent:"
alias flow_location="sudo tcpflow -c -i lo tcp port 80 | grep Location:"
alias flow_location="sudo tcpflow -c -i lo tcp port 80 | grep X-Real-IP:"

# Completion
source ~/.bash/git_completion

