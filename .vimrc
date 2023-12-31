syntax on
set hlsearch
set incsearch
set t_Co=256
set foldmethod=indent
set foldlevel=99
filetype off
set belloff=all
set clipboard=unnamed
set nocompatible
set number
set relativenumber
set backspace=2
set mouse=a
set expandtab
set autoindent
set incsearch
set encoding=utf-8
set showmatch
highlight Comment ctermfg=green
let python_highlight_all=1

au BufNewFile, BufRead *.py
        \ set tabstop=2
        \ set softtabstop=2
        \ set shiftwidth=2
        \ set textwidth=79
        \ set expandtab
        \ set autoindent
        \ set fileformat=unix
let g:ale_linters = {'pyton':['flake8']}
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" set the runtime path to include Vundle and initialize
" In Windows, the Vundle folder needs to be in the user directory, in this
" case in C:\Users\Digital101...
" Reference link : https://stackoverflow.com/questions/59129623/vim-vundle-installation-on-windows-unknown-function-vundlebegin

"Windows rtp
"set rtp+=C:\Users\Digital101\~\.vim\bundle\Vundle.vim

"Linux/RPI rtp
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}           
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'valloric/youcompleteme'
"Plugin 'dense-analysis/ale'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

nmap <F6> :NERDTreeToggle<CR>
nmap <C-s> :w <CR>
nmap <C-q> :wq <CR>

imap <C-s> :w <CR>
imap <C-q> :wq <CR>

nmap <F5> :w !python % <CR>

" 'Folds' code
nnoremap<space> za  
