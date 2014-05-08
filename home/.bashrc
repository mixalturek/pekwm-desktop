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
[ -z "$DISPLAY" ] && setterm -blength 0 || xset b off

. /etc/bash_completion

alias grep='grep --color=auto -s --exclude-dir=.git'
alias ls='ls -hF --color=auto'
alias ll='ls -lhF --color=auto'
alias df='df -h'
alias du='du -h'
alias gcc='colorgcc'
alias make='colormake'
alias cal='cal -y'
alias unrar='unrar -kb '
alias du1='du --max-depth=1'
alias playdir='mplayer `ls -1 *.mp3 *.MP3 *.wma | shuf`'
alias mplayer='mplayer -stop-xscreensaver '
alias qtcreatorUpdateProject='find . -type f | sort'
alias ipAddress="/sbin/ifconfig | grep 'inet addr:' | sed 's/.*inet addr:\([0-9]*.[0-9]*.[0-9]*.[0-9]*\).*/\1/'"
alias droopyAddress="ipAddress | sed 's%^%http://%' | sed 's%$%:8000/%'"

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
