#!/bin/bash

set -e

unlink ~/.vimrc
unlink ~/.bashrc
unlink ~/.tmux.conf

mv ~/.vimrc.bak ~/.vimrc
mv ~/.bashrc.bak ~/.bashrc
mv ~/.tmux.conf.bak ~/.tmux.conf
