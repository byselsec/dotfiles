#!/bin/sh

prefix=$HOME

for f in $(cat preserved); do
	if ! ln -rst "$prefix" "$f" 2>/dev/null && [ ! -L "$prefix"/"$f" ]; then
		mv "$prefix"/"$f"  .
		ln -rst "$prefix" "$f"
	fi
done
