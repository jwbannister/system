" Vundle requirements and plugin calls
set nocompatible
" filetype off
set rtp+=~/lib/vim/bundle/Vundle.vim
call vundle#begin('~/lib/vim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'jpalardy/vim-slime'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jalvesaq/Nvim-R'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-fugitive'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'tmhedberg/SimpylFold'
" Plugin 'klen/python-mode'
call vundle#end()
set rtp+=~/lib/vim

set t_Co=256
colorscheme jbcolors
syntax enable
filetype plugin indent on
set number
set showcmd
set cursorline
set hlsearch
set showmatch
set incsearch
set buftype=""
set encoding=utf-8
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent 
set fileformat=unix
set laststatus=2

" highlight bad whitespace in python files
au BufNewFile, BufRead *.py, *.pyw match BadWhitespace /\s\+$/

" set line wrapping at 80 columns
set formatoptions+=w
set tw=79
set colorcolumn=80
highlight ColorColumn ctermbg=052

" disable arrow keys to encourage hjkl movement
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" remapping to allow for easier jumping between buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" vim-slime config
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

" Nvim-R
let g:R_in_buffer = 0
let g:R_tmux_split = 1
let g:R_assign = 0
let g:R_nvimpager = "horizontal"
let g:R_objbr_w = 30
let g:R_objbr_place = "script,left"
let g:R_objbr_opendf = 0
let g:R_objbr_openlist = 0
" Change Leader and LocalLeader keys:
let maplocalleader = ","
let mapleader = ";"

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts=1

" netrw
let g:netrw_liststyle = 3
let g:netrw_banner=0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 50



