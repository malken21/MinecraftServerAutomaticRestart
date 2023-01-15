# MinecraftServer_AutomaticRestart
24時間Minecraftサーバー( Java )を起動させる
<br>
そして午前6時に再起動させる shファイルなど Ubuntu


## .screenrc
/home/ユーザー名/.screenrc
<br>
rootユーザーがscreenにアクセスできるようにするための設定
```screenrc:.screenrc
multiuser on
addacl root
```

## sudo crontab -e
午前6時になったらMinecraftサーバーを閉じて再起動させる処理
```
00 6 * * * sudo bash sudo-reboot.shの絶対パス
```

## crontab -e
再起動後にMinecraftサーバーを起動させる処理
```
@reboot bash start.shの絶対パス
```

start.sh と end.sh はMinecraftサーバーのjarファイルがある階層に設置する
