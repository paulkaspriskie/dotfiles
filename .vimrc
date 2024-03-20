" -- General Settings --
" noncompatible - makes vim work without being vi-compatible.
" hidden - buffer becomes hidden when it is abandoned.
" encoding[utf-8] - sets the character encoding used inside vim. (utf-8)
" lazyredraw - the screen will not be redrawn while executing macros.
" clipboard[unnamed] - Vim will use the clipboard register '*' for all yank, delete,
" change and put operations which would normally go to the unnamed register.
" history[100] - option to set the number of lines that are remembered, set to 100.
" undolevels[100] - Maximum number of changes that can be undone. (set to 100)
" backupdir - List of directories for the backup file, separated with commas.
" directory - List of directory names for the swap file, separated with commas.
set nocompatible
set hidden
set encoding=utf-8
set lazyredraw
set clipboard=unnamed
set history=100
set undolevels=100
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

if has('persistent_undo')
  set undofile
  set undodir=~/.vim/undo
endif

" -- Text Editor Settings --
syntax on
filetype on
set number
set cursorline
set ruler
set nowrap
set linebreak
set showmatch
let g:javascript_plugin_jsdoc = 1
"Removes trailing white spaces before save.
autocmd BufWritePre * :%s/\s\+$//e

" -- Editor Theming Settings --
set termguicolors
set bg=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" -- Status bar Settings --
set laststatus=2
let g:airline_theme='base16_gruvbox_dark_hard'

"Key mapping
"map <f2> :w! <CR>
"map <f3> :source ~/.vimrc \| let @/ = ""<CR>
"nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-lu>
"set pastetoggle=<F4>
