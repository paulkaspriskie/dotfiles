"Vim Plug Setup
call plug#begin('~/.vim/plugged')
	Plug 'henrynewcomer/vim-theme-papaya'
	Plug 'tpope/vim-vinegar'
	Plug 'itchyny/lightline.vim'
	Plug 'pangloss/vim-javascript'
call plug#end()

"Vim Config
set shell=sh
set number
set laststatus=2
syntax on
filetype plugin indent on
set encoding=utf-8
set background=dark
colorscheme papaya
set t_Co=256
set tabstop=2
set shiftwidth=2

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

if (has("termguicolors"))
  set termguicolors
endif
