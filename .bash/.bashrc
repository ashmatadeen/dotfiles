# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -lah'

#PATH TO SBIN
PATH=$PATH":/usr/sbin"
export PATH

