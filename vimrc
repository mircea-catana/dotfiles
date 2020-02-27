" Vim Config
set t_Co=256
set encoding=utf-8
set ttimeoutlen=10
set laststatus=2
set ignorecase
set nocompatible

" Pathogen
execute pathogen#infect()

" Color Scheme
syntax enable
set background=dark
colorscheme edge

" Airline
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline_powerline_fonts=1

" NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeQuitOnOpen=1
noremap <C-m> :NERDTreeToggle<CR>

" C/CPP enhanced highlight
let g:cpp_member_variable_highlight=1

" CtrlP
let g:ctrlp_working_path_mode='rc'

" Formatting
set number
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=2

set autoindent
set cindent

" Ctags
set tags=tags;
command! MakeTags !ctags -R .
