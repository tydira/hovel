call plug#begin(expand('<sfile>:p:h') . '/plugins')

" Configuration
Plug 'git@github.com:kroogs/vim-kroogs.git'
Plug 'git@github.com:kroogs/vim-goshgolly.git'

" Features
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'neomake/neomake', { 'on': 'Neomake' }
Plug 'lokaltog/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Raimondi/delimitMate'
" Plug 'mattn/gist-vim' | Plug 'mattn/webapi-vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'shougo/unite.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'haya14busa/incsearch.vim'
Plug 'gcmt/wildfire.vim'
" Plug 'maxbrunsfeld/vim-yankstack'

" Languages / Frameworks / Platforms
Plug 'moll/vim-node'
Plug 'digitaltoad/vim-jade'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'flowtype/vim-flow'
" Plug 'vim-scripts/django.vim'
" Plug 'quramy/tsuquyomi'
Plug 'sheerun/vim-polyglot'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" Plug 'zchee/deoplete-go'
" Plug 'zchee/deoplete-jedi'

call plug#end()
