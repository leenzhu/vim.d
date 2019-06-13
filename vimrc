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

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
call plug#end()
