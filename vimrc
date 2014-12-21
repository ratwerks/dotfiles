" general
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set guioptions=aegimrLtb
set helplang=en
set history=50
set nomodeline
set number
set mouse=a
set printoptions=paper:letter

" Vundle plugin management
set nocompatible
filetype off

" set runtime path to include Vundle and itit
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-sensible'
Plugin 'altercation/vim-colors-solarized'

filetype on "end Vundle section

" autocmd
au BufNewFile,BufReadPost {*.md,*.mkd,*.markdown}                  setl ft=markdown
au BufNewFile,BufReadPost {*.scala}                                setl ft=scala
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru}  setl ft=ruby

" color
syntax enable
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized
