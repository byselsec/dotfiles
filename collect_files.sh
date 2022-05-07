#!/bin/sh

for f in $(cat preserved); do
    cp -purv "${HOME}/$f" .
done

