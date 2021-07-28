"  _               _              _
" | |__   __ _ ___(_) ___  __   _(_)_ __ ___
" | '_ \ / _` / __| |/ __| \ \ / / | '_ ` _ \
" | |_) | (_| \__ \ | (__   \ V /| | | | | | |
" |_.__/ \__,_|___/_|\___|   \_/ |_|_| |_| |_|

call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/seoul256.vim'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'ycm-core/YouCompleteMe'
    Plug 'jiangmiao/auto-pairs'

call plug#end()

set background=dark
colorscheme seoul256
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

let mapleader = " "

" Basics
    set nocompatible
    filetype plugin on
    set encoding=utf-8
    set showcmd

    syntax on
    set wrap
    set linebreak
    set nolist

    set number
    set relativenumber

    set ic
    inoremap jk <ESC>
    set wildmenu

" Fix splits
    set splitbelow splitright

"Disable auto-commenting
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Highlight searches and <Leader Leader> to unhighlight
    set incsearch
    set hlsearch
    nnoremap <leader><leader> :nohl<CR><C-l>

" Tabs
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set autoindent

    set splitbelow splitright

" toggle numbers
    nmap <silent> <leader>n :set invnumber<CR>:set invrelativenumber<CR>

" toggle spell
    nnoremap <silent> <leader>s :set invspell spelllang=en_us<cr>

" open blank
    nnoremap <leader>wv :vnew<CR>

" open blank horizontally
    nnoremap <leader>wh :new<CR>

" Move windows
    noremap <leader>h <C-w>h
    map <leader>j <C-w>j
    map <leader>k <C-w>k
    map <leader>l <C-w>l

" resize windows
    nmap <silent> <S-left> :vertical resize -5<CR>
    nmap <silent> <S-right> :vertical resize +5<CR>
    nmap <silent> <S-up> :resize -5<CR>
    nmap <silent> <S-down> :resize +5<CR>

" fzf
    map <C-g> :Files<CR>
    map <C-f> :Rg<CR>

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

hi Normal guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
