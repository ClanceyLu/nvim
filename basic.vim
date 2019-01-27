let mapleader = ' ' 

" intend tab {{{
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smartindent
set autoindent
" }}}

set report=0

" filetype plugin indent on
" filetype plugin on

set synmaxcol=1000
set lazyredraw

set nobackup
set nowritebackup
set noswapfile
if has('persistent_undo')
    set undofile
    set undodir=$HOME/.vim/undo
endif

set history=2000

set foldlevelstart=99

" Search {{{
set hlsearch " highlight search
set incsearch " highlight when insert 
set ignorecase " search ignore case
set smartcase
" }}}

" view {{{
set noshowmode
set scrolloff=7
set number
set relativenumber
set list
" }}}


