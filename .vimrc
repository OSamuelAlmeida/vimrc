filetype plugin indent on
" Show existing tab with 4 spaces width
set tabstop=4
" When indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set softtabstop=4

set number
" Show line numbers

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dikiaap/minimalist'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'othree/html5.vim'
Plugin 'valloric/youcompleteme'
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'git://github.com/chrisbra/Colorizer.git'
Plugin 'jiangmiao/auto-pairs'
Plugin 'leafgarland/typescript-vim'
Plugin 'alvan/vim-closetag'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'https://github.com/elzr/vim-json'
call vundle#end()

filetype plugin indent on

" Configure minimalist Theme
set t_Co=256
syntax on
colorscheme minimalist

set hidden " Allow unsaved background buffers
set backspace=indent,eol,start " Allow backspacing over everything in edit mode
set autoindent
set smartindent
set copyindent " Copy previous indentation
set shiftround " Use multiple of shiftwidth when indenting
set showmatch " Show matching parenthesis
set ignorecase " Ignore when searching
set smartcase " Only ignore if search pattern is all lowercase
set smarttab " Insert tabs on the beginning of lines based on shiftwidth
set hlsearch " Highlight search terms
set incsearch " Show search matches as you type them
set history=1000 " More commands and search history
set undolevels=1000 " More undos
set title " Change terminal title
set visualbell " Don't beep
set noerrorbells " Don't beep
set scrolloff=5

" Enable NeoComplCache
let g:neocomplcache_enable_at_startup = 1

" Always show the status line
set laststatus=2

" Set the system clipboard on vim
set clipboard=unnamed

" Keep vim files on vim folder
set viminfo='100,h,n~/.vim/viminfo'

" Change file default encoding
set encoding=utf-8
set fileencoding=utf-8

" All windows splits to the bottom
set splitbelow

" Enable color highlighting
let g:colorizer_auto_filetype='css,html'

" Enable powerline fonts
let g:airline_powerline_fonts=1

" Filetype specific changes

" Typescript
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Maps

" NERDTree maps
map <C-p> :NERDTreeToggle<CR>
map <F2> :NERDTreeFind<CR>

" Terminal
map <F3> :terminal<CR>

" VCoolor
let g:vcoolor_map = '<F4>'

