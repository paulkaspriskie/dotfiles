"Vim Plug Setup
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-vinegar'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
call plug#end()


"Vim Config
set shell=sh
set number
set laststatus=2
set encoding=utf-8
set t_Co=256
set tabstop=2
set shiftwidth=2

"Vim theme/color-scheme
set background=dark
colorscheme onedark
filetype plugin indent on
syntax on
filetype plugin indent on

"Javascript syntax spec
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0


"Maps save to f2 key
map <F2> :w! <CR>
