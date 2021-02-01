#!/bin/bash

# https://askubuntu.com/questions/1011550/how-can-i-convert-all-video-files-in-nested-folders-batch-conversion
# Change the directories and quality level (lower=better):
inputfolder="/media/sf_ffmpeg_linux_tst"
outputfolder="/media/sf_ffmpeg_linux_tst"
codecoption=mpeg2video
audiocodec=mp2
audiosamplerate=48000
audiochannel=2
audiobitrate=384k
videoquality=0
constantratefactor=18 #The range of the CRF scale is 0–51, where 0 is lossless, 23 is the default, and 51 is worst quality possible. A lower value generally leads to higher quality, and a subjectively sane range is 17–28.
encoderspeed=veryslow
videobitrate=19M
videobitrate_min=19M
videobitrate_max=19M
conversion_buffer_size=11M
gop_size=1
b_frames=0

for inputfile in "$inputfolder"/*.* -hwaccel ; do
    outputfile="$outputfolder/$(basename "${inputfile%}").AVI"
    ffmpeg -i "$inputfile" -c:v $codecoption -c:a $audiocodec -ar $audiosamplerate \
    -ac $audiochannel -ab $audiobitrate \
    -q:v $videoquality -crf $constantratefactor \
	-filter:v "fieldorder=bff" \
	-preset $encoderspeed -vb $videobitrate -minrate $videobitrate_min \
	-maxrate $videobitrate_max -bufsize $conversion_buffer_size \
	-g $gop_size -bf $b_frames -flags +ilme+ildct \
    "$outputfile"
done
