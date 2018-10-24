"-------------------- BASIC SETUP --------------------
let mapleader=" "
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard=unnamed
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set fileformat=unix
set fileformats=unix,dos
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set lazyredraw
set nobackup
set nocompatible
set noswapfile
set nowrap
set number
set ruler
set scrolloff=3
set shell=bash
set shiftwidth=2
set smartcase
set smartindent
set softtabstop=2
set textwidth=150
set wildmode=list:longest
set writebackup
syntax on
filetype indent on
filetype on
filetype plugin on

" ---------------------- PLUGIN CONFIGURATION ----------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vue
let g:vue_disable_pre_processors=1

" NERDTree
let NERDTreeShowHidden=1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let b:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_scss_checkers = ['sass_lint']
let g:syntastic_mode_map = {"mode": "pasive", "passive_filetypes": ["html"]}
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'git://github.com/pangloss/vim-javascript.git'
Plugin 'git://github.com/vim-python/python-syntax.git'
Plugin 'git://github.com/tpope/vim-dispatch.git'
Plugin 'git://github.com/rafi/awesome-vim-colorschemes.git'
Plugin 'tomasiser/vim-code-dark'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mhinz/vim-signify'
Plugin 'mileszs/ack.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'posva/vim-vue'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'skammer/vim-css-color'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

autocmd VimEnter * wincmd p
autocmd FileType vue syntax sync fromstart
" Vue syntax highligting
autocmd BufNewFile,BufRead *.vue set ft=vue

let g:javascript_plugin_jsdoc = 1
let g:python_highlight_all = 1
let g:ack_use_dispatch = 1

" --------------------- KEY MAPPINGS -------------------
" Nerdtree
let NERDTreeIgnore = ['\.pyc$', '\.DS_Storage', '\.idea' ]
nmap <leader>n :NERDTree<CR>

" Buffer Explorer
map <leader>b :BufExplorer<return>

" Navigation
map <leader><tab> <c-w>w
nmap H ^
vmap H ^
nmap L $
vmap L $
nmap J <C-d>
vmap J <C-d>
nmap K <C-u>
vmap K <C-u>

" Edit common files
map <leader>1 :e ~/.vimrc<enter>
map <leader>2 :e ~/.zshrc<enter>
map <leader>ww :w<enter>:so %<enter>

" Toggle Syntastic Mode
nmap <leader>t :SyntasticToggleMode<enter>

" Surround
vmap <leader>' S'
vmap <leader>" S"

" Ack Motions
vnoremap <leader>as y:Ack <C-r>=fnameescape(@")<CR><CR>
noremap <leader>aw :Ack <cword><cr>


" -------------------- Macros --------------------
" Converts current line to a console log
let @l = 'Iconsole.log(A);'
let @h = 'I<lywA></pA>hcit'
nmap <leader>lg @l
nmap <leader>h @h

" -------------------- Theming --------------------
set background=dark
set termguicolors
colorscheme codedark
let g:deepspace_italics=1
highlight ColorColumn ctermbg=lightgray guibg=lightgray
