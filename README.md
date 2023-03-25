# MinecraftServer_AutomaticRestart
24時間Minecraftサーバー( Java )を運営させるための設定
<br>
<br>
・日曜日以外の午前6時にサーバーを再起動させる
<br>
・日曜日の午前6時にサーバー機を再起動させる
<br>
・5分毎にサーバーが起動しているかチェックし、もし起動してないかったらサーバーを起動させる

## .screenrc
/home/ユーザー名/.screenrc
<br>
rootユーザーがscreenにアクセスできるようにするための設定
```screenrc:.screenrc
multiuser on
addacl root
```

## sudo crontab -e
日曜日の午前6時になったらMinecraftサーバーを閉じて再起動させる処理
```
00 6 * * 0 sudo bash sudo-reboot.shの絶対パス
```

## crontab -e
再起動後にMinecraftサーバーを起動させる処理
5分毎Minecraftサーバーが起動しているかチェックする処理
日曜日以外の午前6時にMinecraftサーバーを再起動させる処理
```
@reboot bash start.shの絶対パス
*/5 * * * * bash check.shの絶対パス
0 6 * * 1,2,3,4,5,6 bash reboot.shの絶対パス
```

start.sh と stop.sh はMinecraftサーバーのjarファイルがある階層に設置する
