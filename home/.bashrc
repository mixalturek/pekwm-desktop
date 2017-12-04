# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples


if [ `id -u` = "0" ]; then
    export PS1='[\[\033[01;31m\]\u@\h\[\033[00m\] \[\033[01;34m\]\W\[\033[00m\]]\$ '
else
    export PS1='[\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\W\[\033[00m\]]\$ '
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    export PATH=$PATH:$HOME/bin
fi

# Disable beep on error input
[ -z "$DISPLAY" ] && setterm -blength 0 2>/dev/null || xset b off 2>/dev/null

export EDITOR=vim

. /etc/bash_completion

alias grep='grep --color=auto -s --exclude-dir=.git'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias rgrep='rgrep --color=auto'
alias ls='ls -hF --color=auto'
alias ll='ls -lhF --color=auto'
alias df='df -h'
alias du='du -h'
alias gcc='colorgcc'
alias make='colormake'
alias cal='cal -y'
alias unrar='unrar -kb '
alias du1='du --max-depth=1'
alias ipAddress="/sbin/ifconfig | grep 'inet addr:' | sed 's/.*inet addr:\([0-9]*.[0-9]*.[0-9]*.[0-9]*\).*/\1/'"
alias pythonHttpServer='python -m SimpleHTTPServer 50000'
alias ideadiff='idea.sh diff'

function ctar
{
	if [ -z "$1" ]
	then
		echo "Usage: ctar directory"
	else
		tar -cvzf `echo "$1" | sed 's/\///'`.tar.gz "$1"
	fi
}

function ctard
{
	if [ -z "$1" ]
	then
		echo "Usage: ctard directory"
	else
		tar -cvzf `echo "$1" | sed 's/\///'`_`date +%F`.tar.gz "$1"
	fi
}

function xtar
{
	if [ -z "$1" ]
	then
		echo "Usage: xtar directory"
	else
		tar -xvvzf $1
	fi
}

alias docker-stop-all='docker kill `docker ps -q`'
alias docker-rm-exited='docker rm `docker ps -a -q -f status=exited`'
alias docker-rmi-danglig='docker rmi `docker images -q -f dangling=true`'
alias docker-rm-dangling-volumes='docker volume rm `docker volume ls -q -f dangling=true`'

export PDSH_RCMD_TYPE="ssh"
export PDSH_SSH_ARGS="-2 -A -x -o BatchMode=yes -o StrictHostKeyChecking=no -o CheckHostIP=no %h"
