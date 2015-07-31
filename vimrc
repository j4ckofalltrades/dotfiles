" load ~/.vim/bundle packages
execute pathogen#infect('bundle/{}')
call pathogen#helptags()

" load filetype-specific indent files
filetype indent on

" enable syntax processing
syntax enable

" map NERDTree plugin to F3 key
map <F3> :NERDTreeToggle<cr>
imap <F3> <esc>:NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
            \&& b:NERDTreeType == "primary") | q | endif

" map Gundo plugin to F4 key
nnoremap <F4> :GundoToggle<CR>

" map pastetoggle function to F5 key
set pastetoggle=<F5> " preserve original formatting of copied text

" colorscheme settings
set t_Co=256
set background=dark
colorscheme solarized

" format gitcommit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

" set invisible characters
set list
set listchars=tab:▸\ ,eol:¬

" set vim-airline theme
let g:airline_theme="powerlineish"

" set vim-airline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" enable powerline symbols
let g:airline_powerline_fonts=1

" set old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" set vim-airline's tabline integration settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#formatter = 'unique_tail'

" enable tmuxline extension
let g:airline#extensions#tmuxline#enabled = 0

" fix terminal timeout when leaving INSERT mode
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" set excluded files and directories for Ctrl-P
set wildignore+=*.class,*/bin/*,*/target/*

set nu " show line numbers
set colorcolumn=80 " show indicator at 80 lines
set cursorline " highlight current line

set wildmode=longest:list " enable better command completion

" indention settings
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab


" disable arrow keys
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
