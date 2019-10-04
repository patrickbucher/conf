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
    colo darkblue
elseif &t_Co >= 255
    colo xoria256
endif

" vim-go and gopls configuration
let g:go_fmt_autosave = 1
let g:go_fmt_command = 'goimports'
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'

" use Ctrl-C for code completion (using gopls)
inoremap <C-c> <C-x><C-o>

" automatically (and silently) enable table mode for Markdown files
au BufReadPost,BufNewFile *.md silent TableModeEnable

" GitHub-syle Markdown tables
let g:table_mode_corner = '|'

" commonly used YAML configuration
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
