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

if &t_Co == 8
    colo default
elseif &t_Co >= 255
    colo Mustang
endif

let g:table_mode_corner='|'
