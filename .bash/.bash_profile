# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

export PATH=$PATH:/usr/local/sbin
export PATH=/usr/local/php5/bin:$PATH


alias nano='vim'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
