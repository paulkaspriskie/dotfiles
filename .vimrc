"Vim-Plug Setup
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'mhinz/vim-startify'
Plug 'joshdick/onedark.vim'
Plug 'pangloss/vim-javascript'
call plug#end()


"Base setup
syntax on
set shell=sh
set nocompatible
set number
set laststatus=2
set visualbell
set encoding=utf-8
set nowrap
set cursorline
set ruler
set showmatch
set history=100
set undolevels=100

"File type settings
filetype on
filetype plugin on
filetype indent on

"Indention settings
set autoindent
set smartindent
set smarttab
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
map <f3> :source ~/.vimrc<CR>
map <leader>r :let @/ = ""<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"Javascript syntax highlighting spec
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

"Auto-completes css
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
"Startify bookmark files
let g:startify_bookmarks = [ '.vimrc' ]
