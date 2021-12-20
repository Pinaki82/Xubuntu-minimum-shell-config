#!/bin/bash

# https://askubuntu.com/questions/1011550/how-can-i-convert-all-video-files-in-nested-folders-batch-conversion
# Change the directories and quality level (lower=better):
inputfile="/media/sf_ffmpeg_linux_tst/input.mp3"
outputfile="/media/sf_ffmpeg_linux_tst/output.mp3"
input_tc=00:32:13
output_tc=00:35:46
format=mp3
audiosamplerate=48000
audiochannel=2
audiobitrate=384k

ffmpeg -i "$inputfile" -hwaccel -ss $input_tc -to $output_tc -vn -ar $audiosamplerate \
-ac $audiochannel -ab $audiobitrate -f $format \
"$outputfile"

