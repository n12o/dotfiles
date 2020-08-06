unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

let g:mapleader = "\<Space>"
set tabstop=4
set shiftwidth=4
set expandtab "expands tab to tabstop spaces

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

    
Plug 'tpope/vim-fugitive' 
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-obsession'
" Plug 'christoomey/vim-tmux-navigator'
" Initialize plugin system
call plug#end()
   
