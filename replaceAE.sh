#!/bin/sh

# string="Æthering"
# echo $string
# echo $string | sed -e "s/Æ/AE/"

#  find ./ -name "*Æ*" -ok echo {} | sed -e "s/Æ/AE/"\;

# export LC_ALL=C
# C_ALL

for file in `find /Users/zhaoliang/Library/Caches/Forge/pics/cards -name "*Æ*" -print0`; do
    echo ${file}
done


find . -name "*Æ*" -print0 | xargs -0 sed -i -e "s/Æ/AE/"
find . -name "*.jpg-e" -print0 | xargs -0 rm



find . -type f -name "*Æ*" -ok mv '{}' '{} | sed -e s/Æ/AE/ \;

find . -name "*Æ*" | sed -e 's/\(\(.*\)Æ\(.*\)\)/mv \1 \2AE\3/g'  | sh

find . -name "*Fold into*"