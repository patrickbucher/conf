call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'dhruvasagar/vim-table-mode', { 'for': 'markdown' }
Plug 'rodjek/vim-puppet', { 'for': 'puppet' }
Plug 'vim-syntastic/syntastic', { 'for': 'puppet' }
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
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
    colo iceberg
endif

" vim-go and gopls configuration
let g:go_fmt_command = 'goimports'
let g:go_def_mode = 'godef'
let g_go_info_mode = 'gopls'
let g:go_metalinter_autosave = 1

" use Ctrl-C for code completion (using gopls)
inoremap <C-c> <C-x><C-o>

" automatically (and silently) enable table mode for Markdown files
au BufReadPost,BufNewFile *.md silent TableModeEnable

" default text width for Markdown files
au BufRead,BufNewFile *.md setlocal textwidth=80

" GitHub-syle Markdown tables
let g:table_mode_corner = '|'

" commonly used YAML configuration
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" F6 opens NerdTree
map <F6> :NERDTree<Cr>

" F8 runs auto lint (according PIP 8, hence F8)
map <F8> :PymodeLintAuto<Cr>
