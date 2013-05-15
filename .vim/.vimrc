syntax enable "syntax highlighting
set background=dark
set t_Co=256
colorscheme Tomorrow-Night-Eighties 
set number "line numbers
set encoding=utf8
set tabstop=4
set nocompatible "Remove old school vi settings
set incsearch "Incremental search
set smartcase "Case insensitive search
set novisualbell 
filetype indent on
set listchars=tab:▸\ ,eol:¬
inoremap jk <ESC>
cnoremap w!! w !sudo tee % >/dev/null 
set noswapfile
