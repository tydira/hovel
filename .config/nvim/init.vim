call plug#begin('~/.config/nvim/plugins')

" Configuration
Plug '~/Projects/code/vim-goshgolly'
Plug '~/Projects/code/vim-kroogs'

" Languages / Frameworks
Plug 'keith/swift.vim'
Plug 'fatih/vim-go'
Plug 'moll/vim-node'
Plug 'kchmck/vim-coffee-script'
Plug 'elzr/vim-json'
Plug 'digitaltoad/vim-jade'
Plug 'wavded/vim-stylus'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'vim-scripts/django.vim'
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'mxw/vim-jsx'
" Plug 'matthewsimo/angular-vim-snippets'
" Plug 'leafgarland/typescript-vim'
" Plug 'quramy/tsuquyomi'

" Features
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'lokaltog/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'valloric/youcompleteme', { 'do': './install.py' }
Plug 'Raimondi/delimitMate'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'
" Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'tpope/vim-projectionist'
" Plug 'majutsushi/tagbar'
" Plug 'shougo/unite.vim'
" Plug 'haya14busa/vim-asterisk'
" Plug 'haya14busa/incsearch.vim'
" Plug 'gcmt/wildfire.vim'
" Plug 'tpope/vim-dispatch'
" Plug 'maxbrunsfeld/vim-yankstack'
" Plug 'airblade/vim-gitgutter'
" Plug 'godlygeek/tabular'
" Plug 'mbbill/undotree'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'sjl/gundo.vim'
" Plug 'shougo/vimproc.vim', { 'do': 'make' }

call plug#end()
