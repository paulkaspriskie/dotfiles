"Vim Plug Setup
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'mhinz/vim-startify'
Plug 'joshdick/onedark.vim'
Plug 'pangloss/vim-javascript'
call plug#end()


"Vim Config
set shell=sh
set nocompatible
set number
set laststatus=2
set visualbell
set encoding=utf-8
set t_Co=256
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

"Key mapping stuff
let mapleader=" "
map <leader>s :w! <CR>
map <leader>r :source ~/.vimrc<CR>

"Vim theme/color-scheme
set background=dark
colorscheme onedark
syntax on
filetype on
filetype plugin indent on
filetype plugin indent on

"Javascript syntax highlighting spec
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

"Auto-completes css
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
"Startify bookmark files
let g:startify_bookmarks = [ '.vimrc' ]
