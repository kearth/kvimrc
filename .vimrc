"显示行号
set nu
"启动时隐去援助提示
set shortmess=atI
"语法高亮
syntax on
"配色方案 /usr/share/vim/vim74/colors
colorscheme gruvbox
"背景颜色
set background=dark
"统一缩进为4
set shiftwidth=4
"读档\t转换成space
set ts=4
"将tab转成space存储
set expandtab
"自动对齐
set autoindent 
"显示256色
set t_Co=256
"可以使用鼠标
"set mouse=a
"设置文件编码
set encoding=utf-8
set termencoding=utf-8
"打开支持的文件编码
set fileencodings=utf-8,gbk,latin1
"折行
set textwidth=72
set formatoptions+=mM
set nocompatible
"set paste
set fileformat=unix

filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
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
Bundle 'tobyS/pdv'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()
filetype plugin indent on

"配置pdv2
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

"目录展开折叠
map <F10> :NERDTreeToggle<CR>

set rtp+=/usr/local/lib/python3.6/site-packages/powerline/bindings/vim/

"启动显示状态行
set laststatus=2

"vim-airline配置
let g:airline_theme="luna"
let g:airline_powerline_fonts=1
let g:molokai_original = 1
let g:rehash256 = 1

"tagbar配置
nmap <F8> :TagbarToggle<CR>

"设置行数显示
nmap <F11> :set nonu <CR>
nmap <F12> :set nu <CR>

"开启PHP补全 <Ctrl+X> <Ctrl+O>
autocmd FileType php set omnifunc=phpcomplete#CompletePHP


"配置UltiSnips pdv2依赖
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"解决菜单输出乱码
language messages zh_CN.utf-8 
