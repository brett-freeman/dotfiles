#!/bin/bash

set -e

unlink ~/.vimrc
unlink ~/.bashrc
unlink ~/.tmux.conf

if [ -f ~/.vimrc.bak ]; then
  mv ~/.vimrc.bak ~/.vimrc
fi
if [ -f ~/.bashrc.bak ]; then
  mv ~/.bashrc.bak ~/.bashrc
fi
if [ -f ~/.tmux.conf.bak ]; then
  mv ~/.tmux.conf.bak ~/.tmux.conf
fi
