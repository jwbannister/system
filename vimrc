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
"Plugin 'ervandew/supertab'
Plugin 'vim-python/python-syntax'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'AndrewRadev/linediff.vim'
Plugin 'Konfekt/FastFold'
Plugin 'tmhedberg/SimpylFold'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'nvie/vim-flake8.git'
Plugin 'tmux-plugins/vim-tmux-focus-events'
call vundle#end()

set shell=/bin/zsh
set t_Co=256
syntax enable
colorscheme monokai
"filetype plugin indent on

" automatically update file if changed outside of vim
set autoread
au FocusGained,BufEnter * :checktime

" automatically save on buffer or vim leave (avoid conflicts)
" au FocusLost,WinLeave,BufLeave * :silent! w

set number
set hidden
set showcmd
set cursorline
set hlsearch
set showmatch
set incsearch
set buftype=""
set encoding=utf-8
set fileformat=unix
set laststatus=2
set tabstop=4 
set shiftwidth=4 expandtab autoindent 
filetype indent on

" copy to system clipboard in OSX
vmap 'y :w !pbcopy<CR><CR>

" folding settings
" set foldmethod=manual
set foldnestmax=1

" highlight bad whitespace in python files
au BufNewFile, BufRead *.py, *.pyw match BadWhitespace /\s\+$/

" set line wrapping at 100 columns and set line marking 80 columns
set formatoptions+=w
set textwidth=100
set colorcolumn=100
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
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_preserve_curpos = 0

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

" python mode settings
let pymode=1
let g:pymode_python = 'python3'
let g:pymode_lint=0

" python-syntax highlighting
let g:python_highlight_all = 1

" nerdtree mapping
nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

" git-gutter
set updatetime=100
highlight GitGutterAdd ctermbg=237 ctermfg=046
highlight GitGutterChange ctermbg=237 ctermfg=226
highlight GitGutterDelete ctermbg=237 ctermfg=196
