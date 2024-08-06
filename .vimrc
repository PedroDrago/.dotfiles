set nocompatible

filetype on
filetype plugin on
filetype indent on
syntax on

set rnu
set number

set ruler

set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4

set background=dark
set termguicolors
set t_Co=256

set wildmenu
set noerrorbells
set mouse=a
set lazyredraw


set hlsearch
set ignorecase
set smartcase
set title

set scrolloff=10

set splitright
set splitbelow

set t_Co=256

set showmode
set showmatch

set wrap
set breakindent

set noswapfile
set nobackup
set nowb

let mapleader = " "

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nmap <leader>s :source %<cr>
nmap <leader>a :vsplit<cr>
nmap <leader>A :split<cr>
nmap <leader>q :q!<cr>
nmap <leader>t :term<cr>


nmap <leader>e :Ex<cr>
nmap <leader>E :Rex<cr>

map <C-d> <C-d>zz
map <C-u> <C-u>zz

nnoremap <expr> j (v:count > 1 ? 'm`' . v:count : 'g') . 'j'
nnoremap <expr> k (v:count > 1 ? 'm`' . v:count : 'g') . 'k'
nnoremap <leader>h <cmd>noh<cr>

let g:netrw_liststyle = 3
colorscheme elflord
