"设置文件编码
set encoding=utf-8
set termencoding=utf-8
"打开支持的文件编码
set fileencodings=utf-8,gbk,latin1
"显示行号
set nu
"启动时隐去援助提示
set shortmess=atI
"语法高亮
syntax on
"配色方案 echo $(find /usr/share/vim/ -name "vim??" -type d)/colors/
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
"折行
set textwidth=72
set formatoptions+=mM
set nocompatible
set fileformat=unix

filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"目录
Plugin 'The-NERD-tree'
"注释
Plugin 'The-NERD-Commenter'
"powerline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"多路选择
Plugin 'terryma/vim-multiple-cursors'
"补全
Plugin 'neocomplcache'
"模糊查询
Plugin 'ctrlp.vim'
"页面缓存
Plugin 'bufexplorer.zip'
"go插件
Plugin 'fatih/vim-go'
call vundle#end()
filetype plugin indent on

"设置行数显示
nmap <F1> :set nonu <CR>
nmap <F2> :set nu <CR>

"NERDTree目录展开折叠
map <F10> :NERDTreeToggle<CR>

"vim-airline配置
let g:airline_theme="solarized"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

nnoremap <S-N> :bn<CR>  
nnoremap <S-P> :bp<CR>

"neocomplcache 开启并默认第一个
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1

"解决多路选择和NeoComplete冲突
function! Multiple_cursors_before()
    if exists(':NeoCompleteLock')==2
        exe 'NeoCompleteLock'
    endif
endfunction

function! Multiple_cursors_after()
    if exists(':NeoCompleteUnlock')==2
        exe 'NeoCompleteUnlock'
    endif
endfunction

