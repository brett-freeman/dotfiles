" Switch compatibility and filetype off
set nocompatible
filetype off

" Enable ALE auto completion
let g:ale_completion_enabled = 1

" Enabale FZF
set rtp+=~/.fzf

" Enable pathogen plug-in manager
execute pathogen#infect()

" Enable powerline
" set rtp+=/home/brett/.local/lib/python3.7/site-packages/powerline/bindings/vim/

" File type detection
filetype indent on
filetype plugin on

" Terminal coloring
syntax enable
set laststatus=2
set t_Co=256
set background=dark

" Configure lightline, adds git branch
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

" FZF.vim rebindings
nnoremap <C-d> :Files<CR>
nnoremap <C-f> :Rg<CR>
" NERDTree keybind
map <C-o> :NERDTreeToggle<CR>

" Read file when changed externally
set autoread

" Disable swap and backup files since we use version control
set noswapfile
set nobackup

" Partial fuzzy file search
set path+=**

" Command line and menu appearence
set modelines=0
set number
set ruler
set history=10000

" Error settings
set noerrorbells " Turn off error sounds
set novisualbell " Turn off error flash
set t_vb= " Turn off error flash

set encoding=utf-8

" Whitespace
set nowrap
set formatoptions=tcqrn1
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set autoindent breakindent smartindent cindent
set matchpairs+=<:>

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Mouse-mode for NERDTree mostly
set mouse=a

" Last line
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase smartcase
set showmatch

" Clean trailing whitespaces on save
fun! CleanExtraSpaces()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  silent! %s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfun

" Remaps for easier buffer use
map <tab><tab> <C-^>
map <tab>n :bNext<CR>
map <tab>p :bprevious<CR>
map <tab>l :buffers<CR>:b
