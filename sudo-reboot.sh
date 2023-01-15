#!/bin/bash

#-----設定部分----- start

#ユーザー名
user_name=ユーザー名

#screenの名前
screen_name=screenの名前

#何秒に一回 screenが閉じたことをチェックするか
sleep_time=5

#-----設定部分----- end

screen -p 0 -S $user_name/$screen_name -X eval 'stuff "stop"\015'
while [ -n "$(screen -list | grep -o "${1}")" ]; do
    sleep $sleep_time
done
reboot
