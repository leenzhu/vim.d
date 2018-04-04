set nocompatible "Do not comatible with old vi

"Backup Settings {
set noswapfile
set nobackup
"}

"View Settings {
syntax on "Enable syntax hight
set nu "Display line number
set hls "Hight search
set ruler "Dispaly row, col
set laststatus=2
set incsearch
set wrap "Wrap long lines
" Tab -> 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
colorscheme elflord
"}

"Leader key Settings {
let mapleader=","
nmap <leader>l :ls<cr>:b<SPACE>
nmap <SPACE> <C-F>
nmap <Tab> <C-B>
nmap <leader>e :NERDTreeToggle<cr>

imap <c-b> <left>
imap <c-f> <right>
imap <c-a> <home>
imap <c-e> <end>
imap <c-k> <esc>d$i
imap <c-u> <esc>d0i
imap <c-n> <down>
imap <c-p> <up>


"}
"Plugin Settings {
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" User Plugins {
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'fatih/vim-go'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'luochen1990/rainbow'
Plugin 'easymotion/vim-easymotion'
Plugin 'itchyny/calendar.vim'
Plugin 'scrooloose/nerdtree.git'

Plugin 'Valloric/YouCompleteMe'
" }
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"}

"Global Var Settings {
" fatih/vim-go config
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
" rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
"}
"
" Misc Settings {
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"}

"ReadMe
"YCM 安装说明
" cd ~/.vim/bundle/YouCompleteMe
" ./install.py --clang-completer --gocode-completer --system-libclang --system-boost
