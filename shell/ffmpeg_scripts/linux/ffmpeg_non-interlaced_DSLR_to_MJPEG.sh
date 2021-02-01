#!/bin/bash

# https://askubuntu.com/questions/1011550/how-can-i-convert-all-video-files-in-nested-folders-batch-conversion
# Change the directories and quality level (lower=better):
inputfolder="/media/sf_ffmpeg_linux_tst"
outputfolder="/media/sf_ffmpeg_linux_tst"
codecoption=mjpeg
audiocodec=pcm_s16le
videoquality=0
constantratefactor=18 #The range of the CRF scale is 0–51, where 0 is lossless, 23 is the default, and 51 is worst quality possible. A lower value generally leads to higher quality, and a subjectively sane range is 17–28.

for inputfile in "$inputfolder"/*.* -hwaccel ; do
    outputfile="$outputfolder/$(basename "${inputfile%}").AVI"
    ffmpeg -i "$inputfile" -c:v $codecoption -c:a $audiocodec \
    -q:v $videoquality -crf $constantratefactor \
    "$outputfile"
done
