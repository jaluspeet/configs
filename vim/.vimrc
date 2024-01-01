" SETTINGS
colo wildcharm
set background=dark
let g:netrw_banner = 0
let g:netrw_winsize = 15
set autoindent
let g:autowrite = 1
let g:autowriteall = 1
set hlsearch
set number
set relativenumber
set noswapfile
set undofile
set ignorecase
set smartcase
set nowrap
filetype on
filetype plugin on
filetype indent on 
syntax enable
set splitright
set splitbelow
set title
set noshowmode
set cursorline

" KEYBINDS
let g:mapleader = ' '

nnoremap <leader>q :q!<CR>
nnoremap <leader>, :b#<CR>
nnoremap <leader>. :bnext<CR>
nnoremap <leader>e :Lex<CR><CR>

map <C-c> :make 
map <C-t> :term 

nnoremap <C-h> <C-W><C-H>
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
tnoremap <C-h> <C-\><C-N><C-W><C-H>
tnoremap <C-j> <C-\><C-N><C-W><C-J>
tnoremap <C-k> <C-\><C-N><C-W><C-K>
tnoremap <C-l> <C-\><C-N><C-W><C-L>
