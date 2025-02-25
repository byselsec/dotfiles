#!/bin/bash

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Enable bash completion in interactive shells
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
    fi
fi

source ~/.bash_aliases
#declare -F _complete_alias &>/dev/null && complete -F _complete_alias "${!BASH_ALIASES[@]}"

# Some userfule functions
source ~/.functions

# Configuring LS_COLORS shell variable
#source ~/.local/src/LS_COLORS/lscolors.sh


# Control how bash handles history of commands
HISTCONTROL=ignoreboth
HISTIGNORE="ls:[bf]g:exit:history:trans:shutdown"
HISTSIZE=-1

# Cd to directory by just typing its name
shopt -s autocd

# complete hostnames
shopt -s hostcomplete

# Setting up a prompt
source ~/.prompts
status_prompt
