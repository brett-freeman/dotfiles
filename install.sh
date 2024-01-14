#!/bin/bash

set -e

CWD=$(pwd)

if [ -f ~/.tmux.conf ]; then
	mv ~/.tmux.conf ~/.tmux.conf.bak
fi
if [ -f ~/.bashrc ]; then
	mv ~/.bashrc ~/.bashrc.bak
fi

# Link new configs
ln -s $CWD/.bashrc ~/.bashrc
ln -s $CWD/.tmux.conf ~/.tmux.conf
