#!/bin/bash

mkdir png
for i in {1..1000} :
do
    wget https://www.carry.live/event/card/index.php
    pngname=`cat index.php | grep upload/card/ | grep btn2 | grep action3 | cut -d '"' -f2 | cut -d "/" -f3`
    #if [[ $pngname == *'政客'* ]]; then
    echo $pngname
    if [[ ! -f "png/$pngname" ]]; then 
      wget -P "png"  https://www.carry.live/event/card/upload/card/$pngname
    fi
    #fi
    rm index.php
    sleep 0.8
done

