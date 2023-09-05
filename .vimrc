" VIMSCRIPT ---------------------------------------------------------------------

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
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    " LSP
    Plug 'prabirshrestha/vim-lsp'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'

    " Completion
    Plug 'prabirshrestha/asyncomplete.vim'
    inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

    " Statusline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    let g:airline_symbols_ascii = 1

    " Theme
    Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

call plug#end()

" COLORS 
colorscheme moonfly
