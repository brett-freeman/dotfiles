set nocompatible
filetype plugin indent on
syntax on

" Enable pathogen plug-in manager
execute pathogen#infect()

" Enable powerline
set rtp+=/home/brett/.local/lib/python3.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" NERDTree keybind
map <C-o> :NERDTreeToggle<CR>
