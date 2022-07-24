#!/bin/sh

MANPATH=~/.local/share/man:"${MANPATH}"
#EMACS_SOCKET_NAME=/tmp/emacs`id -u`/server ; export EMACS_SOCKET_NAME
PATH=~/.local/bin:"${PATH}"
PATH=~/.local/python/bin:"${PATH}"

# Changing python installtion directory
PYTHONUSERBASE=~/.local/python ; export PYTHONUSERBASE

# !!! add this to make java applications working currently with suckless dwm!!!!
_JAVA_AWT_WM_NONREPARENTING=1; export _JAVA_AWT_WM_NONREPARENTING
