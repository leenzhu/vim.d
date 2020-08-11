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
let g:go_version_warning = 0
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
" rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
" NERDTree
let NERDTreeIgnore = ['\.o$']

" ACK

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Bookmark
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_location_list = 1
let g:bookmark_disable_ctrlp = 1
"}
"
" Misc Settings {
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"}

let g:rainbow_active = 1

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'easymotion/vim-easymotion'
Plug 'inkarkat/vim-mark'
Plug 'inkarkat/vim-ingo-library'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/cscope.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'luochen1990/rainbow'
call plug#end()
