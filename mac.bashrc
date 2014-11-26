# Set command prompt separately for user and root (with awesome color scheme)
if [[ $UID == 0 ]]; then
   export PS1="\[\e[1;31;40m\]\u\[\033[00m\]@\[\e[36;40m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\e[0m\]\$ "
else
   export PS1="\[\e[1;32;40m\]\u\[\033[00m\]@\[\e[36;40m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\e[0m\]\$ "
fi

# Source .bash_aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
