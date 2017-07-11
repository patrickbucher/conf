set enc=utf-8

set number
syntax on
filetype on

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

set noerrorbells

autocmd FileType make setlocal noexpandtab

autocmd BufNewFile,BufRead *.md setf markdown
autocmd FileType markdown setlocal textwidth=80

colo darkblue
