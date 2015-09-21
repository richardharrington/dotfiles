" fix for stock OS X vim to work with Vundle
filetype on
filetype off


set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-classpath'
Bundle 'tpope/vim-fireplace'
Bundle 'guns/vim-clojure-static'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'

" Bundle 'FuzzyFinder'

syntax enable
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Now for all the non-Vundle stuff:

"disable the annoying recording macro
nmap q :echo<CR>

nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h

imap <C-s> <C-c>:w<Return>
imap jj <C-c>
cmap jj <C-c>

nmap c- ct-
nmap d- dt-
nmap c. ct.
nmap d. dt.

vmap <C-E> :Eval<Return>
nmap <C-E> {v}:Eval<Return>
"vmap K <C-y><C-y>
"nmap J <C-e><C-e>
"nmap K <C-y><C-y>
vmap <C-c> "+y
nmap <C-v> "+P

"next four lines copy and paste from clipboard
nmap ,c :.w !pbcopy<CR><CR>
vmap ,c :w !pbcopy<CR><CR>
nmap ,v :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

cmap ,w e $VIM/_vimrc
"cmap ,s e ~/.vim/after/ftplugin/cpp_snippets.vim
"hi MBEVisibleNormal guibg=blue guifg=white

set ai
set wrap
"set foldmethod=marker
set hls
set ts=4
set sw=4
set expandtab
set ic
syn on
set number
set guioptions=br
set nu
set ruler
set is
set visualbell
set hl=vr
set ft=clojure
set printoptions=syntax:y,number:y

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

filetype on
filetype plugin indent on
cmap :: shell<CR>

autocmd FileType c,cpp :set cindent
"insert date
"cmap ,d <CR>Oj:.!date +"=== \%d.\%m.\%Y - \%H:\%M:\%S (\%A) ==="<CR>o
"switch to shell
"make
set exrc
set autowrite
"set lines=40 columns=150bin/bash: CR: No such file or directory

let g:slime_target = "tmux"

