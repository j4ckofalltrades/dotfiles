" Load ~/.vim/bundle packages
execute pathogen#infect('bundle/{}')
call pathogen#helptags()

" Map NERDTree plugin to F5 key
map <F5> :NERDTreeToggle<cr>
imap <F5> <esc>:NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Map Gundo plugin to F6 key
nnoremap <F6> :GundoToggle<CR>

" Map pastetoggle function to F7 key
set pastetoggle=<F7> " Preserve original formatting of copied text

" Map vim-indent-guides plugin to F8 key
nnoremap <F8> :IndentGuidesToggle<CR>

" Colorscheme settings
syntax enable
set t_Co=256
set background=dark
colorscheme solarized

let g:Powerline_symbols='fancy' " Set fancy icons for powerline

" Indention settings
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Tab settings
set ts=4
set sw=4
set et

set mouse=a " Enable mouse usage in normal mode

set nu " Show line numbers
set colorcolumn=80 " Show indicator at 80 lines
set cursorline " Highlight current line

set wildmode=longest:list " Enable better command completion

" Disable arrow keys
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
