set nocompatible " VI compatible mode is disabled so that Vim things work

" Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on 

" Space & Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4         " number of visual space per TAB      
set shiftwidth=4      " insert 4 spaces on a tab
set softtabstop=4     " number of spaces in tab when editing 
set expandtab         " tabs are spaces

" UI Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number            " show line numbers 
" set relativenumber  " show relative numbering
set ruler             " display cursor position
set showcmd           " show command in bottom bar
set cursorline        " highlight current line
filetype indent on    " load filetype-specific indent files
filetype plugin on    " load filetype-specific plugin files
set wildmenu          " visual autocomplete for command menu
set showmatch         " highlight matching [{()}]
set laststatus=2      " show the status line at the bottom
set mouse+=a          " a necessary evil, mouse support
set noerrorbells visualbell t_vb=   "disable annoying error noises
set linebreak         " have lines warp instead of continue off-screen
set scrolloff=12      " keep cursor in approximately the middle of the screen

" Buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden            " allows having hidden buffers (not displayed in any window)

" Sensible stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start  " make backspace behave in a more intuitive way

nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Leader Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "

" Fast Saving
nmap <leader>w :w!<cr>

" Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch   " search as characters are entered
set hlsearch    " highlight matches
set ignorecase  " ignore case in searches by default
set smartcase   " but make it case sensitive if an uppercase is entered

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" Others
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable the default Vim startup message.
set shortmess+=I

" Try to prevent bad habits like using the arrow keys for movement...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
