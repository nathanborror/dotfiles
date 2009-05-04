# GLOBALS
PS1="[\w] \u\$ "        # Define custom prompt

if [ ! $HOME_DIR ]; then
  HOME_DIR='/home/nathan'   # Define home directory
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
alias apache_stop="sudo /etc/init.d/apache2 stop"
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

# GIT ALIASES
alias gitserve="gitserve -p 8080 -a localhost"

# RABBITMQ
alias rabbit_start="sudo -H -u rabbitmq rabbitmq-server"

# PERSONAL ALIASES
alias mdl="cd $HOME_DIR/modules"
alias src="cd $HOME_DIR/source"
alias django="cd $HOME_DIR/source/django"
alias basic="cd $HOME_DIR/source/django-basic-apps"
alias read="cd $HOME_DIR/projects/readernaut"
alias pb="cd $HOME_DIR/projects/playgroundblues"

# PYTHONPATH
export PYTHONPATH=$PYTHONPATH:$HOME_DIR/projects:$HOME_DIR/modules

# PATH
export PATH=$PATH:$HOME_DIR/bin:$HOME_DIR/source/django/bin

# SCREEN
export TERM=screen

# WELCOME
echo -e ""
echo -ne "Today is "; date
echo -e ""; cal;
echo "";
echo -ne "Up time: ";uptime | awk /'up/ {print $3,$4}'
echo "";