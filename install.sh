#!/bin/bash

set -e

CWD=$(pwd)

mkdir -p ~/.vim
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle

# Back-up current config files
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.bak
fi
if [ -f ~/.tmux.conf ]; then
	mv ~/.tmux.conf ~/.tmux.conf.bak
fi
if [ -f ~/.bashrc ]; then
	mv ~/.bashrc ~/.bashrc.bak
fi

# Link new configs
ln -s $CWD/.vimrc ~/.vimrc
ln -s $CWD/.bashrc ~/.bashrc
ln -s $CWD/.tmux.conf ~/.tmux.conf

# Install pathogen package manager
echo "Installing pathogen..."
pushd ~/.vim/autoload
curl -LSso pathogen.vim https://tpo.pe/pathogen.vim
popd

# Install vim plugins
echo "Installing vim plugins..."
pushd ~/.vim/bundle
git clone https://github.com/itchyny/lightline.vim lightline.vim
git clone https://tpope.io/vim/surround.git surround
git clone https://github.com/scrooloose/nerdtree.git nerdtree
git clone https://github.com/tpope/vim-fugitive.git vim-fugitive
git clone https://github.com/mattn/emmet-vim.git emmet-vim
git clone https://github.com/junegunn/fzf.vim.git fzf.vim
git clone https://github.com/Townk/vim-autoclose.git vim-autoclose
popd

echo "Installing fzf and rip grep"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sudo snap install --classic ripgrep
