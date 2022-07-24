#!/bin/sh

prefix=$HOME

for f in $(cat preserved); do
	cp -prv "$f" "$prefix"
done

