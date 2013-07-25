" Pathogen
filetype off
execute pathogen#infect('bundle/{}', '~/src/vim/bundle/{}')
call pathogen#helptags()

" NERDTree
map <F3> :NERDTreeToggle<cr>
imap <F3> <esc>:NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")	&& b:NERDTreeType == "primary") | q | endif

" Gundo
nnoremap <F4> :GundoToggle<CR>

" Powerline
let g:Powerline_symbols="fancy"

" Solarized
call togglebg#map("<F5>")
syntax enable
set background=dark
colorscheme solarized

" General Vim settings
syntax on
filetype plugin indent on
set nocompatible
set modelines=0

set title
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set wrap
set textwidth=80
set formatoptions=qrn1
set colorcolumn=80

set encoding=utf-8
set number
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

set pastetoggle=<F12>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
