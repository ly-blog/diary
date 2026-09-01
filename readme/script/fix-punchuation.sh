#!/bin/sh -e
#1:folder

#爸爸->父亲
#妈妈->母亲
#仓库->公司

mySed(){ #1:file
echo "$i"
sed -e 's/。/./g' -e 's/：/:/g' -e 's/、/\\/g' -e 's/，/,/g' -e 's/（/(/g' -e 's/）/)/g' -e 's/；/;/g' -e "s/「/'/g" -e "s/」/'/g" -e 's/？/?/g' -e "s/“/\'/g" -e "s/”/\'/g" -e "s/《/'/g" -e "s/》/'/g" -i "$1"
}

for i in "$1"/*.diary;do
 mySed "$i"
done
