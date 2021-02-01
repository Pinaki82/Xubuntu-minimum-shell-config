#!/bin/bash

# https://askubuntu.com/questions/1011550/how-can-i-convert-all-video-files-in-nested-folders-batch-conversion
# Change the directories and quality level (lower=better):
inputfolder="/media/sf_ffmpeg_linux_tst"
outputfolder="/media/sf_ffmpeg_linux_tst"
codecoption=mjpeg
audiocodec=pcm_s16le
audiosamplerate=48000
audiochannel=2
audiobitrate=384k
videoquality=0
constantratefactor=18 #The range of the CRF scale is 0–51, where 0 is lossless, 23 is the default, and 51 is worst quality possible. A lower value generally leads to higher quality, and a subjectively sane range is 17–28.
chromasubsampling_pixelformat=yuvj420p
aspectratio=16:9
dimension=hd720
framerateconversionratio_at_output=50000/2000

for inputfile in "$inputfolder"/*.* -hwaccel ; do
    outputfile="$outputfolder/$(basename "${inputfile%}").AVI"
    ffmpeg -i "$inputfile" -c:v $codecoption -c:a $audiocodec -ar $audiosamplerate \
    -ac $audiochannel -ab $audiobitrate \
    -q:v $videoquality -crf $constantratefactor -filter:v "yadif=0:-1:0, scale=trunc(iw/2)*2:trunc(ih/2)*2" \
    -pix_fmt $chromasubsampling_pixelformat -aspect $aspectratio -s $dimension \
    -r $framerateconversionratio_at_output "$outputfile"
done
