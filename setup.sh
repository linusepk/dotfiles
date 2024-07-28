#!/usr/bin/env bash

if [ ! -z $1 ]; then
    host=$1
else
    host=$(uname -n)
fi
target=$HOME

# Create the .config folder, otherwise stow will symlink the whole .config
# folder instead of just application specific ones, like nvim, alacritty, etc.
mkdir -p $target/.config

stow -v -R -d general -t $target .

if [ -d $host ]; then
    stow -v -R -d $host -t $target .
fi
