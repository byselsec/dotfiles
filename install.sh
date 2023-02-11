#!/bin/sh

prefix=$HOME

for f in $(cat ${0%/*}/preserved); do
	if ! ln -rs "$f" "$prefix/$f" 2>/dev/null && [ ! -L "$prefix"/"$f" ]; then
		printf "[WARNING] Ignoring '$f'\n"
	fi
done
