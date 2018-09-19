" Vim-Plug Setup
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'pangloss/vim-javascript'
call plug#end()


"Base setup
syntax on
set shell=sh
set nocompatible
set hidden
set encoding=utf-8
set laststatus=2
set visualbell
set history=100
set undolevels=100
set lazyredraw

" Editor settings
set number
set cursorline
set ruler
set showmatch
set nowrap
set linebreak
set scrolloff=10
set sidescrolloff=15
set backspace=indent,eol,start

"File type settings
filetype on
filetype plugin on
filetype indent on

"Indention settings
set autoindent
set smartindent
set smarttab
set noexpandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

"Search settings
set hlsearch
set incsearch
set ignorecase

"Color-scheme
set t_Co=256
set background=dark
colorscheme onedark

"Persistent Undo
if has('persistent_undo')
  set undofile
  set undodir=~/.vim/undodir
endif

"Key mapping
let mapleader=" "
map <f2> :w! <CR>
map <f3> :source ~/.vimrc \| let @/ = ""<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-lu>
set pastetoggle=<F4>

"Javascript syntax highlighting spec
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

"Auto-complete settings
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
autocmd FileType js set omnifunc=javascriptcomplete#CompleteJS

"Removes trailing white spaces before save.
autocmd BufWritePre * :%s/\s\+$//e

"Startify bookmark files
let g:startify_bookmarks = [ '.vimrc' ]
