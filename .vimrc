"Disable YCM
"let g:loaded_youcompleteme = 1

"Load vim default settings
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set history=50		" keep 50 lines of command line history
set ruler	    	" show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set laststatus=2

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

syntax on

set ignorecase
set smartcase
let mapleader=","
set number

set nowrap

cmap w!! w !sudo tee > /dev/null %


call plug#begin('~/.vim/plugged')
    Plug 'tclem/vim-arduino'
call plug#end()

au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino
