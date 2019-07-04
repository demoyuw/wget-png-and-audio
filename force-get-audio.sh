#!/bin/bash

for (( i=1;i<=100;i++ ))
do
   wget -P "/Users/demoyuw/audio"  https://www.carry.live/event/card/upload/audio/$i.wav
done

