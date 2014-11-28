# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    	color_prompt=yes
	else
		color_prompt=
    fi
fi  

if [ "$color_prompt" = yes ]; then
	if [[ $UID == 0 ]]; then
		PS1="${debian_chroot:+($debian_chroot)}\[\e[1;31;40m\]\u\[\033[00m\]@\[\e[36;40m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\e[0m\]\$ "
	else
		PS1="${debian_chroot:+($debian_chroot)}\[\e[1;32;40m\]\u\[\033[00m\]@\[\e[36;40m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\e[0m\]\$ "
	fi	
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[1;36m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
