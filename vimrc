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
"设置文件编码
set encoding=utf-8
set termencoding=utf-8
"打开支持的文件编码
set fileencodings=utf-8,gbk,latin1
"折行
set textwidth=72
set formatoptions+=mM
set nocompatible
set fileformat=unix

filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Bundle 'VundleVim/Vundle.vim'
"目录
Bundle 'The-NERD-tree'
"注释
Bundle 'The-NERD-Commenter'
"powerline
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
"多路选择
Bundle 'terryma/vim-multiple-cursors'
"补全
Bundle 'neocomplcache'
"模糊查询
Bundle 'ctrlp.vim'
"页面缓存
Bundle 'bufexplorer.zip'
call vundle#end()
filetype plugin indent on

"设置行数显示
nmap <F1> :set nonu <CR>
nmap <F2> :set nu <CR>

"NERDTree目录展开折叠
map <F10> :NERDTreeToggle<CR>

"vim-airline配置
let g:airline_theme="molokai"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
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

"解决菜单输出乱码
language messages zh_CN.utf-8 
