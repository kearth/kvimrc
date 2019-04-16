# kvimrc


**一种vim配置：包括vimrc基础配置， 配色主题配置，vundle插件安装和插件基本配置**


## 安装（Install）

执行
```
cd ~
git clone git@github.com:kearth/kvimrc.git
```
然后进入 ~/kvimrc 目录执行
```
sudo cp -r color/* $(find /usr/share/vim/ -name "vim??" -type d)/colors/
```

```
bash install.sh
```
完成安装。

## 卸载（Uninstall）

在 ~/kvimrc 目录执行
```
bash uninstall.sh
```
