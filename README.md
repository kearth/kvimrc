## kvimrc

**一种vim配置：包括vimrc基础配置， 配色主题配置，vundle插件安装和插件基本配置**

## 安装（Install）

在用户目录 " ~ " （即 /home/$USERNAME 目录, $USERNAME为你的用户名）下执行
```
git clone git@github.com:kearth/kvimrc.git
```
然后进入 ~/kvimrc 目录执行
```
sudo cp -r color/* /usr/share/vim/vim$VIMVERSION/colors/
```
此处的$VIMVERSION即为你的vim版本号。然后执行
```
bash install.sh
```
完成安装。

## 卸载（Uninstall）

在 ~/kvimrc 目录执行
```
bash uninstall.sh
```
