# GLOBALS

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:\1/'
}

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(parse_git_branch)\$ '

if [ ! $HOME_DIR ]; then
  HOME_DIR='/home/nathan'                     # Define home directory
fi

# Default editor
export EDITOR=/usr/bin/vim

# ALIASES
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
alias rhino="java -jar ~/bin/rhino.jar"       # Begin a rhino session
alias prs="python -m SimpleHTTPServer"        # Simple python server
alias pypath="python -c 'import sys; print sys.path' | tr ',' '\n' | grep -v 'egg'" # Show pythonpath
alias home="cd $HOME_DIR"

# APTITUDE ALIASES
alias update="sudo aptitude update"
alias upgrade="sudo aptitude safe-upgrade"

# NGINX ALIASES
alias nginx_restart="sudo /etc/init.d/nginx restart"
alias nginx_start="sudo /etc/init.d/nginx start"
alias nginx_stop="sudo /etc/init.d/nginx stop"

# APACHE ALIASES
alias apache_restart="sudo /etc/init.d/apache2 restart"
alias apache_reload="sudo /etc/init.d/apache2 reload"
alias apache_start="sudo /etc/init.d/apache2 start"
alias apache_stop="sudo /etc/init.d/apache2"
alias apache_log="sudo vim /var/log/apache2/error.log"

# DJANGO ALIASES
alias rs="python manage.py runserver --settings=$DJANGO_SETTINGS_MODULE"
alias sdb="python manage.py syncdb --settings=$DJANGO_SETTINGS_MODULE"
alias shell="django-admin.py shell --settings=$DJANGO_SETTINGS_MODULE"
alias test="django-admin.py test --settings=$DJANGO_SETTINGS_MODULE"

# MYSQL ALIASES
alias mysql_restart="sudo /etc/init.d/mysql restart"
alias mysql_start="sudo /etc/init.d/mysql start"
alias mysql_stop="sudo /etc/init.d/mysql stop"

# Postgres
alias postgresql_restart="sudo /etc/init.d/postgresql-8.3 restart"

# GIT ALIASES
alias gs="gitserve -p 8080 -a localhost"
alias gb="git branch -a"
alias gbd="git branch -d"
alias gc="git commit"
alias gp="git pull"

# RABBITMQ
alias rabbit_start="sudo -H -u rabbitmq rabbitmq-server"

# PERSONAL ALIASES
alias mdl="cd $HOME_DIR/modules"
alias src="cd $HOME_DIR/source"
alias django="cd $HOME_DIR/source/django"

# PYTHONPATH
export PYTHONPATH=$PYTHONPATH:$HOME_DIR/projects:$HOME_DIR/modules

# PATH
export PATH=$PATH:$HOME_DIR/bin:$HOME_DIR/source/django/django/bin

# SCREEN
export TERM=screen

# TCPFLOW
alias flow_referrers="sudo tcpflow -c -i lo tcp port 8080 | grep Referer:"
alias flow_from="sudo tcpflow -c -i lo tcp port 8080 | grep From:"
alias flow_agent="sudo tcpflow -c -i lo tcp port 8080 | grep User-Agent:"
alias flow_location="sudo tcpflow -c -i lo tcp port 8080 | grep Location:"