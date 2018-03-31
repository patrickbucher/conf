call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'dhruvasagar/vim-table-mode'
call plug#end()

set enc=utf-8
set number

syntax on
filetype on

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

set noerrorbells

colo Mustang

let g:table_mode_corner='|'
