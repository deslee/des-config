set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

set gfn=Liberation_Mono
" set term=xterm
" set t_Co=256
" let &t_AB="\e[48;5;%dm"
" let &t_AF="\e[38;5;%dm"

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'jnurmine/Zenburn'         " colors
Plugin 'scrooloose/nerdtree'      " file tree
Plugin 'scrooloose/nerdcommenter' " commenting macros
Plugin 'itchyny/lightline.vim'    " pretty status bar
Plugin 'kien/ctrlp.vim'           " finder

Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'		  " html coder

call vundle#end()            " required
syntax on
colorscheme zenburn

filetype plugin indent on    " required

set tabstop=2
set shiftwidth=2
set undofile
set hlsearch
set relativenumber

" autocmd vimenter * NERDTree " automatically launches nerdtree

let mapleader = ","

nnoremap <leader>1 yypVr=           " puts a leader of = characters
nnoremap <leader><space> :noh<cr>   " clears the highlights
nnoremap <leader>w <C-w>v<C-w>l     " splits a vertical window and switches to it
nnoremap <leader>n :NERDTreeToggle<cr> " toggles the file manager
nnoremap <leader>q :q<cr>
nnoremap <leader>s :w<cr>

set wrap

"nnoremap j gj
"nnoremap k gk
inoremap jj <ESC>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
