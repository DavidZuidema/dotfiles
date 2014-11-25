set nocompatible
filetype indent plugin on
syntax on

set hidden
set wildmenu
set showcmd
set hlsearch

set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent

set showmatch

" Use the same symbols as TextMate for tabstops and EOLs
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

set nowrap

set background=dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number

if !has('gui_running')
    " Compatibility for Terminal
    let g:solarized_termtrans=1

    if (&t_Co >= 256 || $TERM == 'xterm-256color')
        " Do nothing, it handles itself.
    else
        " Make Solarized use 16 colors for Terminal support
        let g:solarized_termcolors=16
    endif
endif

set ruler
set laststatus=2
set confirm
set visualbell

:command C let @/=""

set tags=./tags;/

