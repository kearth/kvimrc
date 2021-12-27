#!/bin/bash
# 前言: 如果是mac系统, 基于安全策略无法修改主题。
# 需要: 重启系统, 按command+R进入恢复模式, 打开终端执行:csrutil disable, 重启。
# M1 芯片修改后可能不支持,建议变更路径

echo "**********开始安装**********"

# 获取当前目录
dir=`pwd -P`
echo "**********Step1 PWD: $dir **********"

# 建立vimrc软连接
if [ ! -f "$dir/vimrc" ];then
    echo "vimrc文件不存在, 退出安装！"
    exit
fi

# 拷贝主题
finddir=/usr/share/vim
if [ -f $HOMEBREW_PREFIX ]; then
	finddir=$HOMEBREW_PREFIX
fi
vimdir=`echo $(find $HOMEBREW_PREFIX -name "vim??" -type d)/colors/`
sudo cp color/gruvbox.vim $vimdir 
echo "**********Step2 Copy Theme $vimdir**********"

# 软链接.vimrc
sudo cp vimrc ~/.vimrc
echo "**********Step3 Make ~/.vimrc **********"

# 下载vundle插件
if [ ! -d "~/.vim/bundle/" ];then
    mkdir -p ~/.vim/bundle/
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
fi

# 打开vim自动安装插件
vim +PluginInstall +qall
echo "**********Step4 Install Plugin **********"

echo "*********安装结束*********"
