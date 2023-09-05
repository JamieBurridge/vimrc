" VIMSCRIPT ---------------------------------------------------------------------

colorscheme elflord

" Disable vi backwards compatibility
set nocompatible

filetype on
filetype plugin on
filetype indent on
syntax on

set shiftwidth=4
set tabstop=4
set expandtab

set number
set cursorline
set scrolloff=10
set smartcase

set showcmd
set hlsearch
set history=50

set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ---------------------------------------------------------------------
call plug#begin()
    " LSP
    Plug 'prabirshrestha/vim-lsp'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'

    " Statusline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    let g:airline_symbols_ascii = 1

call plug#end()


