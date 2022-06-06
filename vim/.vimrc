
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.dots/vim/.vim/bundle/Vundle.vim
call vundle#begin('~/.dots/vim/.vim/bundle')

Plugin 'VundleVim/Vundle.vim'

" user plugins
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ



" general
syntax on
set number " Show line numbers
set ruler " Show file stats
set belloff=all " Blink cursor on error instead of beeping (grr)
set encoding=utf-8 " Encoding

" whitespace
set wrap
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" cursor
set backspace=indent,eol,start
" Status bar
set laststatus=2

" Searching
" nnoremap / /\v
" vnoremap / /\v
" set hlsearch
" set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" theme
autocmd vimenter * ++nested colorscheme 
" autocmd vimenter * hi Normal ctermbg=NONE guibg=NONE

