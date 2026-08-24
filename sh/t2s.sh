#!/bin/sh

cd content

for i in *;do
 opencc -i "$i" -o "$i".opencc -c t2s.json
done

for i in *.opencc;do
 n=$(basename -s .opencc "$i")
 mv "$i" "$n"
done
