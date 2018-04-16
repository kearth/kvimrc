#!/bin/bash
ln -s ~/git/Kvimrc/.vimrc ~/.vimrc

if [ ! -d "~/.vim/bundle/" ];then
    mkdir -p ~/.vim/bundle/
else
    echo "文件夹已经存在"
fi
ln -s ~/git/Kvimrc/vundle ~/.vim/bundle/

vim +PluginInstall +qall
sudo cp -r color/* /usr/share/vim/vim74/colors/
