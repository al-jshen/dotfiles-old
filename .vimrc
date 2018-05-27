call plug#begin('~/.vim/plugged/')
	Plug 'vim-scripts/indentpython.vim'
	Plug 'Valloric/YouCompleteMe'
	Plug 'vim-syntastic/syntastic'
	Plug 'nvie/vim-flake8'
	Plug 'tmhedberg/SimpylFold'
call plug#end()

" Python PEP8 Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" UTF-8 Support
set encoding=utf-8

" Completion Customizations
let g:ycm_autoclose_preview_window_after_completion=1

" Syntax Highlighting
let python_highlight_all=1
syntax on

" Line Numbers
set nu

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za


