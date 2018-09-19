set nocompatible

" Vundle requirements and plugin calls
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jpalardy/vim-slime'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jalvesaq/Nvim-R'
Plugin 'vim-airline/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'sickill/vim-monokai'
Plugin 'ervandew/supertab'
Plugin 'vim-python/python-syntax'
"Plugin 'python-mode/python-mode'
"Plugin 'bfredl/nvim-ipy'
"Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'AndrewRadev/linediff.vim'
Plugin 'Konfekt/FastFold'
Plugin 'tmhedberg/SimpylFold'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'majutsushi/tagbar'
call vundle#end()

set shell=/bin/bash
set t_Co=256
syntax enable
colorscheme monokai
filetype plugin indent on
set autochdir
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
"set omnifunc=jedi#completions

" folding settings
set foldmethod=manual
set foldnestmax=1

" highlight bad whitespace in python files
au BufNewFile, BufRead *.py, *.pyw match BadWhitespace /\s\+$/

" set line wrapping at 100 columns and set line marking 80 columns
set formatoptions+=w
set textwidth=100
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

" vim-slime config
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

" Nvim-R
let g:R_in_buffer = 0
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
let g:airline#extensions#branch#enabled = 1

" netrw
let g:netrw_liststyle = 3
let g:netrw_banner=0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" python mode settings
let pymode=1
let g:pymode_python = 'python3'
let g:pymode_lint=0

" python-syntax highlighting
let g:python_highlight_all = 1

" jedi
" use j & k to scroll through autocomplete popups 
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
let g:jedi#show_call_signatures = 2
let g:jedi#auto_close_doc = 0
let g:jedi#popup_on_dot = 0

