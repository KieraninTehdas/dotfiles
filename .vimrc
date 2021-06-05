let g:polyglot_disabled = ['markdown']

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugs')

Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf.vim'
Plug 'tmsvg/pear-tree'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'davidhalter/jedi-vim'
Plug 'rust-lang/rust.vim'

call plug#end()

" For rust language server
syntax enable
filetype plugin indent on

set number
colorscheme nord
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf

source ~/.vim/config/ale.vim
source ~/.vim/config/nerdtree.vim
