#!/bin/sh
CARDSET=mbs
cd  /Users/zhaoliang/Library/Caches/Forge/pics/cards/
mkdir $CARDSET
cd  $CARDSET
for i in `seq 1 155`; do
    wget http://magiccards.info/scans/jp/mbs/$i.jpg
done
