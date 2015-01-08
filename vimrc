" general
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set helplang=en
set history=48
set number
set mouse=a
set printoptions=paper:letter
set guioptions=aegimrLtb

" Vundle plugin management
set nocompatible
filetype off

" set runtime path to include Vundle then initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-sensible'
Plugin 'elzr/vim-json'
Plugin 'altercation/vim-colors-solarized'
Plugin 't9md/vim-chef'

filetype on "end Vundle section

" autocmd
au BufNewFile,BufReadPost {*.md,*.mkd,*.markdown}                  setl ft=markdown
au BufNewFile,BufReadPost {*.scala}                                setl ft=scala
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru}  setl ft=ruby

" color
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized
