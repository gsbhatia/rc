export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#export PS1='\u@\h:\w$'
#PS1='\h:\W \u\$ '

if [[ $UID == 0 ]]; then
   export PS1="\[\e[1;31;40m\]\u\[\033[00m\]@\[\e[36;40m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\e[0m\]\$ "
else
   export PS1="\[\e[1;32;40m\]\u\[\033[00m\]@\[\e[36;40m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\e[0m\]\$ "
fi

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

##
# Your previous /Users/gsbhatia/.bash_profile file was backed up as /Users/gsbhatia/.bash_profile.macports-saved_2014-11-06_at_15:58:50
##

# MacPorts Installer addition on 2014-11-06_at_15:58:50: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

