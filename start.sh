#!/bin/bash

#-----設定部分----- start

#screenの名前
screen_name=screenの名前

#実行するコマンド
command="java -Xms2G -Xmx2G -jar jarファイルの名前 --nogui"

#-----設定部分----- end

cd $(dirname $0)
screen -UAmdS $screen_name $command
echo Start!! $screen_name
