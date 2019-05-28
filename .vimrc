set nocompatible
set encoding=utf-8
" Optimize for fast terminal connections
set ttyfast
" Don’t add empty newlines at the end of files
set binary
set noeol
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
"set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Start scrolling three lines before the horizontal window border
set scrolloff=3


" A nice dark colorscheme
colorscheme darkblue

" Use nice filespecific syntax highlighting
filetype plugin indent on
syntax on

" Tab -> 4 spaces
set backspace=2
set laststatus=2
set ts=4
set sw=4
set softtabstop=4
set expandtab smarttab autoindent

" Show all commands and settings you can tab-complete to
set wildmenu
set wildmode=longest,list

" Only use case-matching when you mix big and small chars
set ignorecase smartcase

" Show what you are doing
set showmatch showcmd ruler hidden incsearch hlsearch

" Disable spellchecking
set nospell

" Underline the current line
set cul

" Show no line numbers
set nonumber

" Pretty menu with useful info about the current file
set laststatus=2
set statusline=%F%m%r%h%w%R\ %y\ [%l,%v][%p%%]

" If you let go of Shift too slow in a :w
cab Q q
cab W w

" Save a file with sudo
cmap w!! w !sudo tee % >/dev/null

" If you write this in insertmode you probably ment something else
inoremap jj <Esc>
inoremap :wq <Esc>

" Center on the match you searched for
map N Nzz
map n nzz

" Previous and next buffer, useful together with 'gf'
nmap gb :bN<cr>
nmap gn :bn<cr>

" Move up and down one line at a time even on linewrapped rows.
nnoremap <silent> k gk
nnoremap <silent> j gj

" Disable menu when running gVim
if has("gui_running")
    set guioptions-=T
endif

" Set vim to chdir for each file you open
if exists('+autochdir')
    set autochdir
else
    autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
    " % current file name
    " :p expand to full path
    " :h head (last path component removed)
    " gs/ /\\ /  replace " " with "\ "
endif
