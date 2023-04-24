# AutomaticRestartMC

24時間Minecraftサーバー( Java )を運営させるための設定

・日曜日以外の午前5時30分にMinecraftサーバーを再起動させる

・日曜日の午前5時30分にOSを再起動させる

・5分毎にMinecraftサーバーが起動しているかチェックし、もし起動してないかったらMinecraftサーバーを起動させる

## .screenrc

/home/ユーザー名/.screenrc

rootユーザーがscreenにアクセスできるようにするための設定

```txt
multiuser on
addacl root
```

## sudo crontab -e

日曜日の午前5時30分になったらMinecraftサーバーを閉じて再起動させる処理

```txt
30 5 * * 0 bash sudo-reboot.shの絶対パス
```

## crontab -e

再起動後にMinecraftサーバーを起動させる処理

5分毎に午前5時以外の時間にMinecraftサーバーが起動しているかチェックする処理

30分以外の時間に5分毎に午前5時の時間にMinecraftサーバーが起動しているかチェックする処理

日曜日以外の午前5時30分にMinecraftサーバーを再起動させる処理

```txt
@reboot bash start.shの絶対パス
*/5 0-4,6-23 * * * bash check.shの絶対パス
1-29,31-59/5 5 * * * bash check.shの絶対パス
30 5 * * 1-6 bash reboot.shの絶対パス
```

start.sh と stop.sh はMinecraftサーバーのjarファイルがある階層に設置する
