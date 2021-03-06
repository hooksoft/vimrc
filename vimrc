" Turn off compatibility mode for vi
set nocompatible
syntax on

" Make backspace work properly
set backspace=indent,eol,start

" Indentation
set smartindent
set tabstop=3
set shiftwidth=3
set expandtab

" No menus
set guioptions-=m
set guioptions-=T

" Case-sensitive search only if there are uppercase characters in the search string
set ignorecase
set smartcase

" Don't make backups
set nobackup
set nowritebackup

" Colorscheme
colorscheme koehler

" Highlight search and make search incremental (as you type)
set hlsearch
set incsearch

" Show matching parenthesis or brace
set showmatch

" Encoding
set encoding=utf-8
set ff=unix

" Switch working directory to the current file
set autochdir

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Tab shortcuts
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabprev<CR>
nnoremap tk  :tabnext<CR>
nnoremap tl  :tablast<CR>
nnoremap td  :tabclose<CR>
nnoremap tn  :tabnew<CR>
nnoremap t[  :tabmove -1<CR>
nnoremap t]  :tabmove +1<CR>

" Don't start ed compatibility mode
nnoremap Q <nop>

" Show/hide hidden characters with ,l
nnoremap ,l :set list!<CR>

" Toggle paste/nopaste with ,p
set pastetoggle=,p

" Show number of matches with ,c (http://stackoverflow.com/questions/4668623/show-count-of-matches-in-vim)
nnoremap ,c :%s/<C-R>=&ignorecase ? '\c' : '\C'<CR><C-R>///gn<CR>

" Clean up searched pattern with ,<space> (https://dougblack.io/words/a-good-vimrc.html)
nnoremap ,<space> :nohlsearch<CR>

" Turn on hex mode with ,h
nnoremap ,h :%!xxd<CR>

" Use hybrid line numbers
set number relativenumber

" Toggle line numbers with ,n
nnoremap ,n :set nu! rnu!<CR>

" Force syntax highlighting with ,s
nnoremap ,s :syntax sync fromstart<CR>
