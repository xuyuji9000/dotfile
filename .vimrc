"Vundle
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Bundle 'VundleVim/Vundle.vim'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'jashkenas/coffee-script-tmbundle'
Bundle 'gregsexton/MatchTag'
Bundle 'joonty/vim-phpqa.git'
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'
Bundle 'cakebaker/scss-syntax.vim'
Bundle "leafgarland/typescript-vim"
Bundle "vim-syntastic/syntastic"
Bundle "posva/vim-vue"
Bundle 'SirVer/ultisnips'
Bundle 'martinda/Jenkinsfile-vim-syntax'

" vim theme
" Bundle "dracula/vim"
" Bundle "altercation/vim-colors-solarized"
Bundle "flazz/vim-colorschemes"

filetype plugin indent on     " required!
"Vundle

" NERDTree
"autocmd VimEnter * NERDTree
let NERDTreeWinPos="right"
map <C-n> :NERDTreeToggle<CR>
" NERDTree

" DoxygenToolkit
map fg :Dox<cr>
let g:DoxygenToolkit_briefTag_funcName = "yes"
let g:DoxygenToolkit_commentType = "PHP"
let g:DoxygenToolkit_authorName="yogiman"
" DoxygenToolkit

" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|git\|vendor'
" CtrlP

"phpqa"
" Set the codesniffer args
let g:phpqa_codesniffer_args = "--standard=Zend"
" Don't run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 0
" Don't run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 0
"phpqa"

" vim theme
syntax enable
" set background=dark
colorscheme badwolf

" convert tab to 2 spaces
set softtabstop=4
set shiftwidth=4
set expandtab
au FileType javascript setl sw=2 sts=2 et

" mapleader <Leader>
let mapleader=","

" hybrid line number
set relativenumber
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

" 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" ejs syntax highlight
au BufNewFile,BufRead *.ejs set filetype=html

" eslint
let g:syntastic_javascript_checkers = ['eslint']

" UltiSnips configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.dotfile/snippets']
