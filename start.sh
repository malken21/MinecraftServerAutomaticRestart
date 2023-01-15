#!/bin/bash

#-----設定部分----- start

#jarファイルのあるディレクトリのパス
directory_path=jarファイルのあるディレクトリのパス

#jarファイルの名前
file_name=jarファイルの名前

#screenの名前
screen_name=screenの名前

#サーバーに割り当てるメモリ
jvm_men=2G

#-----設定部分----- end

cd $directory_path
screen -UAmdS $screen_name java -Xms$jvm_men -Xmx$jvm_men -jar $file_name --nogui
