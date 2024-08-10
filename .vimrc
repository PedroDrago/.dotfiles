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

nmap <silent> <leader>s :source %<cr>
nmap <silent> <leader>a :vsplit<cr>
nmap <silent> <leader>A :split<cr>
nmap <silent> <leader>q :q!<cr>
tnoremap <silent> <leader><Esc> <C-\><C-n>
"the above line should change. The ideal would be esc to exit the terminal
"mode instantly, but something is wrong and it takes too long (other esc
"keymap blocking or something like that
nmap <silent> <leader>t :botright term<cr>


nmap <leader>e :Ex<cr>
nmap <leader>E :Rex<cr>

map <C-d> <C-d>zz
map <C-u> <C-u>zz

nnoremap <expr> j (v:count > 1 ? 'm`' . v:count : 'g') . 'j'
nnoremap <expr> k (v:count > 1 ? 'm`' . v:count : 'g') . 'k'
nnoremap <leader>h <cmd>noh<cr>

let g:netrw_liststyle = 3
colorscheme retrobox
