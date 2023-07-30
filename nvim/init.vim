set timeoutlen=1000
set ttimeoutlen=50
set relativenumber
"set cursorcolumn
set cursorline
set clipboard+=unnamedplus

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Syntax
syntax on
filetype on
filetype plugin on
filetype indent on

" Colors
set background=light
hi Visual cterm=bold ctermbg=black

" Indents
set shiftwidth=4
set tabstop=4
" Use space characters instead of tabs.
set expandtab

" Do not wrap lines. Allow long lines to extend as far as the line goes.
"set nowrap

" Search
set incsearch
set ignorecase
set smartcase
set showmatch
set hlsearch
set showmatch
set hlsearch

set showmode

set history=10
set showcmd

" Wildmenu
set wildmenu
set wildmode=list:longest
"set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" This will enable code folding. Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
