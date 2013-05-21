# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

export PATH=$PATH:/usr/local/sbin

alias nano='vim'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
