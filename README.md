# vscode-vim-settings
vscode基于vim的相关配置快捷键

## 背景

最近VSCode重装后，之前的配置失效，索性重新按自己习惯配置了下快捷，尽可能让在写MD文档时候能改兼容参见的快捷键操作！

文档记录了配置和调试的最终结果，后续有Keybindsing更新再做同步！

## 扩展配置

1. Manage -> Keyboard ShortCuts[Ctrl+K Ctrl+S] -> 右上角`...`打开
2. 删除掉`keybindings.json`内容，使用github文档中的`keybindings.json`替代

## 相关扩展安装

### vim
- Vim

编辑 `~/.vimrc`，配置如下，支持一些高亮、tab、shift+tab设置，以及在插入模式下的`Ctrl+A\Ctrl+E`类似快捷操作

```
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
```

### Markdown
- Markdown All in One
- Markdown Preview Github
- Markdownlint

### Alfred影响

注意：如果在Alfred配置了Snippets的快捷配置，比如`::date` -> 解析为`{date:yyyy/MM/dd}`，如果`Tweaking`默认配置成最快(`Fastest`)，在VSCode中可能出现无法正常替换Snippets的值问题，需要降级到`Faster`可以正常！
