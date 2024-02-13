#!/bin/bash

#-----設定部分----- start

#screenの名前
screen_name=screenの名前

#-----設定部分----- end

cd $(dirname $0)
if [ -z "$(screen -ls | grep -o $screen_name"\s")" ]; then
    bash start.sh
fi
