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
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/vim-easy-align'
Plug 'w0rp/ale'
Plug 'lokaltog/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-bufword'
Plug 'Raimondi/delimitMate'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'haya14busa/vim-asterisk'
Plug 'haya14busa/incsearch.vim'
Plug 'gcmt/wildfire.vim'
Plug 'olical/vim-enmasse'
Plug 'chrisbra/Colorizer'

" Languages / Frameworks
Plug 'moll/vim-node'
Plug 'ncm2/ncm2-tern', { 'do': 'npm install' }
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'ncm2/ncm2-racer'
Plug 'ncm2/ncm2-jedi'
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', { 'do': './install.sh', 'for': ['typescript', 'typescript.tsx'] }

call plug#end()
