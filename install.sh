#!/bin/bash
ln -s ~/git/kvimrc/.vimrc ~/.vimrc

if [ ! -d "~/.vim/bundle/" ];then
    mkdir -p ~/.vim/bundle/
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
else
    echo "文件夹已经存在"
fi

vim +PluginInstall +qall
#sudo cp -r color/* /usr/share/vim/vim74/colors/
