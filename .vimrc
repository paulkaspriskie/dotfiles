"Vim-Plug Setup
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'mhinz/vim-startify'
Plug 'joshdick/onedark.vim'
Plug 'pangloss/vim-javascript'
call plug#end()


"Base setup
set shell=sh
set nocompatible
set number
set laststatus=2
set visualbell
set encoding=utf-8
set nowrap
set showmatch
set history=1000
set undolevels=1000

"Indention settings
set autoindent
set smartindent
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2

"Key mapping
let mapleader=" "
map <leader>s :w! <CR>
map <leader>r :source ~/.vimrc<CR>

"Color-scheme/file specific syntax highlighting
syntax on
filetype on
filetype plugin indent on
set t_Co=256
set background=dark
colorscheme onedark

"Javascript syntax highlighting spec
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

"Auto-completes css
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
"Startify bookmark files
let g:startify_bookmarks = [ '.vimrc' ]
