# 安装

* 备份`/system/usr/keylayout/Generic.kl`和`/system/usr/keychars/Generic.kcm`
* 用[master/keylayout/Generic.kl](master/keylayout/Generic.kl)覆盖`/system/usr/keylayout/Generic.kl`
* 用[master/keychars/Generic.kcm](master/keychars/Generic.kcm)覆盖`/system/usr/keychars/Generic.kcm`

## 用脚步安装

* 文件将被备份到[backup](backup)目录
* 文件将被备份到`/system/usr/keylayout/Generic.kl~``/system/usr/keychars/Generic.kcm~`（如果A63里没有这两个文件）。
* 在有正常的`GNU coreutils`和`/bin/sh`和`adb`的系统，在此目录执行`./install.sh`。

# 改动

| 原始按键   | 原始      | 修改后  |
| --------- |:--------:| -----:|
| 5         | 5+`/`    | 5+`%`  |
| 6         | 6+`-`    | 6+`^` |
| .         | `.`+`?`  |  `/`+`?` |
| CC111（词典1） |      | `,`+`<`  |
| CC222（词典2） |      | `.`+`>` |
| SOUND（播放声音）|     | `'`+`"` |
| CCSEARCH（搜索）|     | `;`+`:` |
| ANDROID（安卓）|      | `\`+`|` |
| RECENTAPP（切换窗口）| | `-`+`_` |
| PAGE_UP（两个向上箭头）|| `[`+`{` |
| PAGE_DOWN（两个向下箭头）||`]`+`}` |
| ESCAPE（返回） |       | `TAB` |
| HOME（主页） |         | `=`+`+` |
