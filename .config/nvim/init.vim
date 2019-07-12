" let mapleader=","

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn'vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

" Basics
	syntax on
	set encoding=utf-8
	set number relativenumber

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions -=c formatoptions -=r formatoptions-=o

