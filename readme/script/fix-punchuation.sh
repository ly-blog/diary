#!/bin/sh -e
#1:folder


mySed(){ #1:file
echo "$i"
sed -e 's/。/./g' -e 's/：/:/g' -e 's/、/\\/g' -e 's/，/,/g' -e 's/（/(/g' -e 's/）/)/g' -e 's/；/;/g' -e "s/「/'/g" -e "s/」/'/g" -e 's/？/?/g' -i "$1"
}

for i in "$1"/*.diary;do
 mySed "$i"
done
