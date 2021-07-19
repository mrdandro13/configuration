"  _               _              _
" | |__   __ _ ___(_) ___  __   _(_)_ __ ___
" | '_ \ / _` / __| |/ __| \ \ / / | '_ ` _ \
" | |_) | (_| \__ \ | (__   \ V /| | | | | | |
" |_.__/ \__,_|___/_|\___|   \_/ |_|_| |_| |_|

call plug#begin('~/.vim/plugged')
    Plug 'arcticicestudio/nord-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

call plug#end()

colorscheme nord
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

let mapleader = " "

    set nocompatible
    filetype plugin on
    set encoding=utf-8
    set showcmd
    syntax on
    inoremap jk <ESC>
    set wildmenu
    set splitbelow splitright
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    set incsearch
    set hlsearch
    nnoremap <leader><leader> :nohl<CR><C-l>
    set wrap
    set linebreak
    set nolist
    set number
    set tabstop=4
    set shiftwidth=4
    set relativenumber
    set ic
    set expandtab
    set autoindent
    set splitbelow splitright
    nmap <silent> <leader>n :set invnumber<CR>:set invrelativenumber<CR>
    nnoremap <silent> <leader>s :set invspell spelllang=en_us<cr>
    nnoremap <leader>wv :vnew<CR>
    nnoremap <leader>wh :new<CR>
    noremap <leader>h <C-w>h
    map <leader>j <C-w>j
    map <leader>k <C-w>k
    map <leader>l <C-w>l
    nmap <silent> <S-left> :vertical resize -5<CR>
    nmap <silent> <S-right> :vertical resize +5<CR>
    nmap <silent> <S-up> :resize -5<CR>
    nmap <silent> <S-down> :resize +5<CR>
    map <C-g> :Files<CR>
    map <C-f> :Rg<CR>
