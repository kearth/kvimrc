#!/bin/bash
if [ ! -f "~/kvimrc/vimrc"];then
    echo "请确保~/kvimrc/vimrc文件存在"
fi

#建立vimrc软连接
ln -s ~/kvimrc/vimrc ~/.vimrc

if [ ! -d "~/.vim/bundle/" ];then
    mkdir -p ~/.vim/bundle/
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
fi

#sudo cp -r color/* /usr/share/vim/vim74/colors/

vim +PluginInstall +qall
