" pathogen (vim package manager)
execute pathogen#infect()
syntax on
filetype plugin indent on

set encoding=UTF-8

" solarized colorscheme
set t_Co=256
set background=dark
colorscheme solarized

" hybrid line numbers
set nu rnu
set cursorline

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" shortcut mappings
map <F1> :NERDTreeToggle<CR>
map <F2> :UndotreeToggle<CR>

" split windows
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

