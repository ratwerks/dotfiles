"version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
let &cpo=s:cpo_save
unlet s:cpo_save
set cpo&vim
map! <S-Insert> <MiddleMouse>
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <S-Insert> <MiddleMouse>
syntax enable
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
"set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set guioptions=aegimrLt
set helplang=en
set history=50
set nomodeline
set mouse=a
set printoptions=paper:letter
"set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
" vim: set ft=vim :
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-sensible'
filetype on
"-eof-
