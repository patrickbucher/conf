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
autocmd FileType python setlocal textwidth=79
autocmd FileType go setlocal textwidth=80

au BufNewFile,BufRead *.md setf markdown
autocmd FileType markdown set textwidth=80

colo darkblue
