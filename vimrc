set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'trusktr/seti.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rstacruz/sparkup'
"Plugin 'Townk/vim-autoclose'
Plugin 'Raimondi/delimitMate'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'Nopik/vim-nerdtree-direnter'
Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'skammer/vim-css-color'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'groenewege/vim-less'
Plugin 'JulesWang/css.vim'
Plugin 'genoma/vim-less'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Open NERDTree automatically if vim is run if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree when C-n is hit
map <C-n> :NERDTreeToggle<CR>

" NERDTreeFind when \-o is pressed
map <Leader>o :NERDTreeFind<CR>

" Close VIM when NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" HardCore Training Mode, DISABLE ARROW KEYS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Relative line numbers
set relativenumber

" Show buffers as tabs
let g:airline#extensions#tabline#enabled = 1

" Map ctrl + p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" When invoked without an explicit starting directory, CtrlP will set its local working directory according to this variable:
let g:ctrlp_working_path_mode = 'ra'

" Color schemes and syntax highlighting
syntax enable
colorscheme seti

" Set tabs to 4 soft tabs (spaces)
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

"set delimitMate_jump_expansion=1

" Cycle through buffers
noremap <Tab> :bnext<CR>
noremap <C-S-Tab> :bprevious<CR>

set bg=dark

" CWD to same directory as the current file being editted
autocmd BufEnter * silent! lcd %:p:h

" Open a file in nerdtree when you press enter key
let NERDTreeMapOpenInTab='<ENTER>'



"let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
"if executable('ag')
"    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"endif
