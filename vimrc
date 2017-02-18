
" Vundle requirements and plugin calls
set nocompatible
filetype off
set rtp+=~/lib/vim/bundle/Vundle.vim
call vundle#begin('~/lib/vim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'jpalardy/vim-slime'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
" Plugin 'klen/python-mode'
" Plugin 'jalvesaq/Nvim-R'
" Plugin 'blueyed/vim-diminactive'
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

" statusline settings
set laststatus=2
set statusline=
set statusline+=%#MyColor2#
set statusline+=%m
set statusline+=%#MyColor1#
set statusline+=\ \%F
set statusline+=%#MyColor3#
set statusline+=\ \%l/%L\L 
set statusline+=%=
set statusline+=%#MyColor2#
set statusline+=%n
highlight MyColor1 ctermfg=red ctermbg=black cterm=underline
highlight MyColor2 ctermfg=013 ctermbg=black cterm=underline
highlight MyColor3 ctermfg=lightblue ctermbg=black cterm=underline

" enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" vim-slime config
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

" Mini Buffer Explorer settings
map <Leader>mbe :MBEOpen<cr>
map <Leader>mbc :MBEClose<cr>
map <Leader>mbt :MBEToggle<cr>
let g:miniBufExplAutoStart = 1
hi MBENormal ctermfg=007
hi MBEChanged ctermfg=005
hi MBEVisibleNormal ctermfg=003
hi MBEVisibleChanged ctermfg=005
hi MBEVisibleActiveNormal ctermfg=011
hi MBEVisibleActiveChanged ctermfg=013
let g:did_minibufexplorer_syntax_inits = 1



