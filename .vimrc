call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'maralla/completor.vim'
Plug 'mdempsky/gocode'
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
    colo darkblue
elseif &t_Co >= 255
    colo wombat256
endif

let g:table_mode_corner='|'
let g:go_fmt_autosave=1
let g:go_fmt_command="goimports"
