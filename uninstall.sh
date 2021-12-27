#!/bin/bash
echo "**********开始卸载**********"
#卸载插件
sudo rm -rf ~/.vim/bundle
#删除vimrc软连接
sudo rm -rf ~/.vimrc
echo "**********卸载完毕**********"
