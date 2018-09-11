"vim Plug config
call plug#begin('~/.vim/plugged')

Plug 'henrynewcomer/vim-theme-papaya'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'

call plug#end()

"Vim config
set shell=sh
set nocompatible
set number
set laststatus=2
syntax on
filetype plugin indent on
set encoding=utf-8
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
