syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set guifont=Iosevka
set guioptions-=m
set guioptions-=T
set noesckeys
" set relativenumber
set number
set ignorecase
set smartcase
set incsearch
set cinoptions=l1
set modeline
set iminsert=0
set imsearch=0
set autoindent
set autochdir
" Highlight matching brace
set showmatch
set hlsearch
set cursorline
colorscheme habamax

" Move Line Up
nnoremap <C-Up> ddkP
inoremap <C-Up> <ESC> ddkP ==gi
vnoremap <C-Up> :m '<-2<CR>gv=gv

" Move Line Down
nnoremap <C-Down> ddp
inoremap <C-Down> <ESC> ddp ==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv

" Open New Window Se, Ve, Te (S : Split Horizontal, V : Split Vertical, T: Tab)
nnoremap <C-p> :Ve <CR>
inoremap <C-p> <ESC> :Ve <CR>
vnoremap <C-p> <ESC> :Ve <CR>

