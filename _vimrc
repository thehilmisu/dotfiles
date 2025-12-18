syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256
" set guioptions-=m
" set guioptions-=T
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
set wildmenu
" Highlight matching brace
set showmatch
set hlsearch
set cursorline
colorscheme HKNGruberDarker

" ctrl+} -> goes to definition, ctrl+n autocompletes
set omnifunc=ccomplete#Complete
" set tags=$HOME/.vim/mlx.tags,$HOME/.vim/gm_cpd.tags
set tags=C:\\Users\\worhozca\\.vim\\mlx.tags,C:\\Users\\worhozca\\.vim\\gm_cpd.tags

function Gitbranch()
    return trim(system("git -C " . expand("%:h") . " branch --show-current 2>NUL"))
endfunction

augroup Gitget
    autocmd!
    autocmd BufEnter * let b:git_branch = Gitbranch()
augroup END

set laststatus=2

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

" ESC will clear the search results highligthing
nnoremap <ESC> :noh <CR><ESC>

" :vimgrep <pattern> <directory>. when results are found, :cnext and :cprev
nnoremap <C-n> :cnext <CR>
nnoremap <C-m> :cprev <CR>

" Search for the visually selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

if !has('gui_running')
  set t_Co=256
endif

" Search and replace text -> :s/<pattern>/<replacement>
" Search and replace text in the entire file -> :%s/<pattern>/<replacement>
" Search and replace text in the current line -> :s/<pattern>/<replacement>/g
" For example, this command will replace all the occurrences of the strings
" "email" and "login" with the string "credentials" in the entire file:
"
" :%s/email\|login/credentials

let g:lightline = {
          \ 'colorscheme': 'wombat',
          \ }
