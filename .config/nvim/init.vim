call plug#begin(expand('<sfile>:p:h') . '/plugins')

" Configuration
Plug 'git@github.com:tydira/vim-config.git'
Plug 'git@github.com:tydira/vim-goshgolly.git'
" Plug 'git@github.com:tydira/vim-goshdawn.git'

" Features
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'lokaltog/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'Raimondi/delimitMate'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'olical/vim-enmasse'
" Plug 'chrisbra/Colorizer'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'sheerun/vim-polyglot'

let g:coc_global_extensions = [
  \'coc-fzf-preview',
  \'coc-spell-checker',
  \'coc-git',
  \'coc-prettier',
  \'coc-rust-analyzer',
  \'coc-deno',
  \'coc-tsserver',
  \'coc-inline-jest',
  \'coc-eslint',
  \'coc-json',
  \'coc-yaml',
  \'coc-html',
  \'coc-css',
  \]

Plug 'neoclide/coc.nvim', { 'branch': 'release', 'do': 'CocInstall \| CocUpdate' }

call plug#end()
