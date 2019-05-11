" No vi compatibility
set nocompatible

filetype off

" Enable pathogen plug-in manager
execute pathogen#infect()

" Enable powerline
" set rtp+=/home/brett/.local/lib/python3.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set background=dark

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" NERDTree keybind
map <C-o> :NERDTreeToggle<CR>

syntax on

" Disable swap and backup files since we use version control
set noswapfile
set nobackup

filetype plugin indent on

set modelines=0

set number

set ruler

set visualbell

set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Last line
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
