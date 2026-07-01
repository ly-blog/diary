#!/bin/sh -e
#1:folder

for i in "$1"/*.diary;do
 echo "$i"
 opencc -i "$i" -o "$i".opencc.cn -c t2s.json
 mv "$i".opencc.cn "$i"
done
