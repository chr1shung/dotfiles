set nocompatible " VI compatible mode is disabled so that Vim things work

" Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable 

" Space & Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shiftwidth=4
set tabstop=4       
set softtabstop=4  
set expandtab     

" UI Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set relativenumber
set ruler
set showcmd
set cursorline
filetype indent on
set wildmenu
set showmatch
set laststatus=2
set mouse+=a
set noerrorbells visualbell t_vb=

" Buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden

" Insertion behaviour
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Leader Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "

" Fast Saving
nmap <leader>w :w!<cr>

" Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <leader>/ :nohlsearch<CR>  " turn off search highlight

" Others
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable the default Vim startup message.
set shortmess+=I


" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
