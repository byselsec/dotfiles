#!/bin/sh

prefix=$HOME
SH=${0%/*}
for f in $(cat $SH/preserved); do
	if ! ln -rs $SH/"$f" "$prefix/$f" 2>/dev/null && [ ! -L "$prefix"/"$f" ]; then
		printf "[WARNING] Ignoring '$f'\n"
	fi
done
