" Pathogen settings
filetype off
execute pathogen#infect('bundle/{}', '~/src/vim/bundle/{}')
call pathogen#helptags()

" NERDTree settings
map <F3> :NERDTreeToggle<cr>
imap <F3> <esc>:NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Gundo settings
nnoremap <F4> :GundoToggle<CR>

" vim-airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme = "solarized"

" powerline symbols
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" Solarized settings
set t_Co=256
call togglebg#map("<F5>")
syntax enable
set background=dark
colorscheme solarized

" vim-indent settings
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
set ts=4 sw=4 et

" General vim settings
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

set pastetoggle=<F6>

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
