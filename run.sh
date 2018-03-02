#!/bin/sh
cardset=$argv[1]
echo ${cardset}
ruby cardlistToBatch.rb ${cardset}
echo ruby processed
mv ${cardset}.sh /Users/zhaoliang/Library/Caches/Forge/pics/cards/${cardset}
cd /Users/zhaoliang/Library/Caches/Forge/pics/cards/${cardset}/
. ./${cardset}.sh
echo rename completed
popd
