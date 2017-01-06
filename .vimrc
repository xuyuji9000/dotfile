"Vundle
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Bundle 'VundleVim/Vundle.vim'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle "tomasr/molokai"
Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'jashkenas/coffee-script-tmbundle'
Bundle 'gregsexton/MatchTag'
Bundle 'joonty/vim-phpqa.git'
Bundle 'othree/yajs.vim'

filetype plugin indent on     " required!
"Vundle

" NERDTree
autocmd VimEnter * NERDTree
let NERDTreeWinPos="right"
" NERDTree

" NERDTreeTabs
" 按下 ctrl+n 调出/隐藏 NERDTree
map <C-n> :NERDTreeTabsToggle<CR>
" 默认开启nerdtreetabs
let g:nerdtree_tabs_open_on_console_startup = 1
" NERDTreeTabs


" DoxygenToolkit
map fg :Dox<cr>
let g:DoxygenToolkit_briefTag_funcName = "yes"
let g:DoxygenToolkit_commentType = "PHP"
let g:DoxygenToolkit_authorName="yogiman"
" DoxygenToolkit

" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|git'
" CtrlP

"phpqa"
" Set the codesniffer args
let g:phpqa_codesniffer_args = "--standard=Zend"
" Don't run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 0
" Don't run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 0
"phpqa"

" vim主题
syntax enable
set background=dark
colorscheme molokai

" convert tab to 4 spaces
 set tabstop=4
 set softtabstop=4
 set shiftwidth=4
 set expandtab
 set autoindent

" mapleader <Leader>
let mapleader=","

" line number
set number

" 代码折叠
set foldmethod=indent

" welcome
echo "(>^.^<)"

" HTML代码补全
:set omnifunc=htmlcomplete#CompleteTags

" 在visual模式下搜索
vnoremap // y/<C-R>"<CR>

" set path variable to current directory and to all directories under current
" directory recursively
set path=$PWD/**


"bracket
"括号自动补全
" {}
" inoremap {      {}<Left>
" inoremap {<CR>  {<CR>}<Esc>O
" inoremap {{     {
" inoremap {}     {}
" inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"

" ()
" inoremap        (  ()<Left>
" inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

" ''
" inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"

" ""
" inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

" []
" inoremap        [  []<Left>
" inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
"bracket

"search
:set hlsearch
