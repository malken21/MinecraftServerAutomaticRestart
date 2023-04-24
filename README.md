# AutomaticRestartMC

24時間Minecraftサーバー( Java )を運営させるための設定

・日曜日以外の午前6時にMinecraftサーバーを再起動させる

・日曜日の午前6時にOSを再起動させる

・5分毎にMinecraftサーバーが起動しているかチェックし、もし起動してないかったらMinecraftサーバーを起動させる

## .screenrc

/home/ユーザー名/.screenrc

rootユーザーがscreenにアクセスできるようにするための設定

```screenrc
multiuser on
addacl root
```

## sudo crontab -e

日曜日の午前6時になったらMinecraftサーバーを閉じて再起動させる処理

```sh
00 6 * * 0 sudo bash sudo-reboot.shの絶対パス
```

## crontab -e

再起動後にMinecraftサーバーを起動させる処理
5分毎に午前6時以外の時間にMinecraftサーバーが起動しているかチェックする処理
日曜日以外の午前6時にMinecraftサーバーを再起動させる処理

```sh
@reboot bash start.shの絶対パス
*/5 0-5,7-23 * * * bash check.shの絶対パス
0 6 * * 1-6 bash reboot.shの絶対パス
```

start.sh と stop.sh はMinecraftサーバーのjarファイルがある階層に設置する
