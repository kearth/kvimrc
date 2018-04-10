"语法高亮
syntax on
"配色方案
"一般配色方案在/usr/share/vim/vim74/colors目录下，需要sudo权限
colorscheme gruvbox
set background=dark
"统一缩进为4
set shiftwidth=4
"读档\t转换成space
set ts=4
"将tab转成space存储
set expandtab
"自动对齐
set autoindent
"显示行号
set nu
set cindent
"显示256色
set t_Co=256

"设置文件编码
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,latin1

set formatoptions+=mM

set textwidth=72
set fileformat=unix
filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'VundleVim/Vundle.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'majutsushi/tagbar'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'neocomplcache'
Bundle 'ctrlp.vim'
Bundle 'bufexplorer.zip'
filetype plugin indent on

map <F10> :NERDTreeToggle<CR>

set rtp+=/usr/local/lib/python3.6/site-packages/powerline/bindings/vim/
set laststatus=2

"vim-airline配置
let g:airline_theme="luna"
let g:airline_powerline_fonts=1

let g:molokai_original = 1
let g:rehash256 = 1

"tagbar配置
nmap <F8> :TagbarToggle<CR>

nmap <F11> :set nonu <CR>
nmap <F12> :set nu <CR>

