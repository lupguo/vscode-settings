"setting .vimr
syntax enable
"filetype plugin indent on

set nocompatible
set tabstop=4       " Size of a hard tabstop (ts)
set shiftwidth=4    " Size of an indentation (sw)
set expandtab       " Always uses spaces instead of tab characters (et)
set softtabstop=4   " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
set autoindent      " Copy indent from current line when starting a new line.
set smarttab        " Inserts blanks on a <Tab> key (as per sw, ts and sts).
set hls

" 解决删除键异常问题
set backspace=indent,eol,start

" 行首/行尾, 前/后/上/下光标移动
inoremap <C-A> <Esc>0i
inoremap <C-E> <Esc>$a
inoremap <C-F> <Right>
inoremap <C-B> <Left>
inoremap <C-N> <Down>
inoremap <C-P> <Up>
inoremap <C-D> <Del>
