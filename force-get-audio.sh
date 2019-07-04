#!/bin/bash
mkdir audio
for (( i=1;i<=50;i++ ))
do
  if [[ ! -f "audio/$i.wav" ]]; then
    wget -P "audio"  https://www.carry.live/event/card/upload/audio/$i.wav
  fi
done

