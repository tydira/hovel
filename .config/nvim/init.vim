call plug#begin(expand('<sfile>:p:h') . '/plugins')

" Configuration
Plug '~/Projects/Code/vim-goshgolly'
Plug '~/Projects/Code/vim-kroogs'

" Features
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
" Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-unimpaired'
" Plug 'scrooloose/syntastic' replace with neomake
Plug 'neomake/neomake'
Plug 'lokaltog/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
" Plug 'valloric/youcompleteme', { 'do': './install.py' } replace with deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Raimondi/delimitMate'
" Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'shougo/unite.vim'
" Plug 'haya14busa/vim-asterisk'
" Plug 'haya14busa/incsearch.vim'
" Plug 'gcmt/wildfire.vim'
" Plug 'maxbrunsfeld/vim-yankstack'
" Plug 'godlygeek/tabular'
" Plug 'sjl/gundo.vim'

" Languages / Frameworks / Platforms
Plug 'moll/vim-node'
Plug 'digitaltoad/vim-jade'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'flowtype/vim-flow'
" Plug 'vim-scripts/django.vim'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'matthewsimo/angular-vim-snippets'
" Plug 'quramy/tsuquyomi'
Plug 'sheerun/vim-polyglot'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" Plug 'zchee/deoplete-go'
" Plug 'zchee/deoplete-jedi'

call plug#end()
