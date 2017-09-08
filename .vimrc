"-------------------- BASIC SETUP --------------------
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard=unnamed
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set fileformat=unix
set fileformats=unix,dos
set ruler
set hidden
set history=1000
set hlsearch
set incsearch
set ignorecase
set smartcase
set lazyredraw
set nobackup
set nocompatible
set noswapfile
set number
set scrolloff=3
set shiftwidth=2
set smartindent
set softtabstop=2
set textwidth=150
set wildmode=list:longest
set writebackup
set shell=bash
let mapleader=","
syntax on
filetype indent on
filetype on
filetype plugin on

" ---------------------- PLUGIN CONFIGURATION ----------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" NERDTree
let NERDTreeShowHidden=1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_javascript_checkers = ['gjslint']
let g:syntastic_scss_checkers = ['sass_lint']
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'
Plugin 'itchyny/lightline.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mhinz/vim-signify'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'skammer/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()

autocmd VimEnter * wincmd p

" --------------------- KEY MAPPINGS -------------------
" Fuzzy Finder
nmap <leader>p :FufFile<CR>
nmap <leader>b :FufBuffer<CR>
nmap <leader>t :FufTaggedFile<CR>
nmap <leader>t :FufTaggedFile<CR>

" Nerdtree
nmap <leader>n :NERDTree<CR>

" Buffer Explorer
map <space> :BufExplorer<return>


" -------------------- Theming --------------------
colorscheme deep-space
highlight ColorColumn ctermbg=lightgray guibg=lightgray
