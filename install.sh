#!/bin/sh

for file in $(find ~/.config -maxdepth 1 -type f -name '\.*' \
		| egrep -v '/\.git'); do
	ln -sb $file $HOME
done
