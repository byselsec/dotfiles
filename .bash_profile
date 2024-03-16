#!/bin/bash

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

if [[ -f ~/.profile ]] ; then
    . ~/.profile
fi

# Created by `pipx` on 2024-03-13 19:16:04
export PATH="$PATH:/home/mathway/.local/bin"
