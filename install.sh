#!/bin/bash
echo "**********开始安装**********"

#获取当前目录
dir=`pwd -P ~`

#建立vimrc软连接
if [ ! -f "$dir/vimrc" ];then
    echo "$dir/vimrc文件不存在, 退出安装！"
    exit
fi

#拷贝主题
sudo cp gruvbox.vim $(find /usr/share/vim/ -name "vim??" -type d)/colors/

ln -s ~/kvimrc/vimrc ~/.vimrc

#下载vundle插件
if [ ! -d "~/.vim/bundle/" ];then
    mkdir -p ~/.vim/bundle/
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
fi

#打开vim自动安装插件
vim +PluginInstall +qall

echo "*********安装结束*********"
