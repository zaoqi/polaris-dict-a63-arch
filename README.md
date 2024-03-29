# polaris-dict-a63-arch
快译通电子词典 A63 新版本 Archlinux + X11 + LXDE 及相关资料

## 启动器激活Android图标

见 [启动器激活Android图标相关工具](启动器激活Android图标相关工具)

## Archlinux + X11 + LXDE

0. 取得root权限: 用专有软件[Kingroot](https://kingroot.net)的[简体中文Microsoft Windows版](http://king.myapp.com/myapp/kdown/img/KingRootSetup_v3.4.0.1142_105002.exe)或[English Android版](http://king.myapp.com/myapp/kdown/img/NewKingrootV5.3.7_C197_B451_en_release_2018_06_19_20180620180829_105203.apk)。建议用`简体中文Microsoft Windows版`。
0. 安装并配置[Xserver XSDL](http://prdownloads.sourceforge.net/libsdl-android/apk/XServer-XSDL/XServer-XSDL-1.11.40.apk)和[LinuxDeploy](https://github.com/meefik/linuxdeploy/releases/download/2.3.1/linuxdeploy-2.3.1-247.apk)。建议装到专门的micro sd卡里。

## 修复快译通诡异的键盘配置

修改`/system/usr/keychars/`和`/system/usr/keylayout/`：
见[键盘配置文件](键盘配置文件)

## 相关二进制文件

本文给出链接的二进制文件备份在[相关二进制文件](相关二进制文件)

## CVE-2016-5195

[CVE-2016-5195](https://github.com/timwr/CVE-2016-5195)(dirtycow/dirtyc0w)存在，但无法用这个工具临时获取root权限。

相关issues:

* https://github.com/timwr/CVE-2016-5195/issues/92
* https://github.com/timwr/CVE-2016-5195/issues/93
