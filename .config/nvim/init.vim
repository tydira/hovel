call plug#begin(expand('<sfile>:p:h') . '/plugins')

" Configuration
Plug 'git@github.com:kroogs/vim-kroogs.git'
Plug 'git@github.com:kroogs/vim-goshgolly.git'

" Features
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/vim-easy-align'
Plug 'w0rp/ale'
Plug 'lokaltog/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-bufword'
Plug 'Raimondi/delimitMate'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'haya14busa/vim-asterisk'
Plug 'haya14busa/incsearch.vim'
Plug 'gcmt/wildfire.vim'
" Plug 'maxbrunsfeld/vim-yankstack'
Plug 'sbdchd/neoformat'
Plug 'olical/vim-enmasse'
Plug 'chrisbra/Colorizer'
Plug 'airblade/vim-gitgutter'

" Languages / Frameworks / Platforms
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'ncm2/ncm2-tern', { 'for': 'javascript', 'do': 'npm install' }
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'ncm2/ncm2-racer'
Plug 'ncm2/ncm2-jedi', { 'for': 'python' }
Plug 'sheerun/vim-polyglot'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'flowtype/vim-flow', { 'do': 'npm install -g flow-bin', 'for': 'javascript' }
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'vim-scripts/django.vim'

call plug#end()
