#!/bin/bash
echo "开始卸载"
#卸载插件
rm -rf ~/.vim/bundle
#删除vimrc软连接
rm ~/.vimrc
echo "卸载完毕"
