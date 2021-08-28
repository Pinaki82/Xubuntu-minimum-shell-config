@ECHO OFF
rem alternative filter for better (but very slow) conversion
rem -filter:v "yadif=1:-1:0, mcdeint=0:0:20, framestep=2, hqdn3d=1.5:1.5:6:6, scale=trunc(iw/2)*2:trunc(ih/2)*2"
REM https://www.macxdvd.com/mac-dvd-video-converter-how-to/ffmpeg-avi-to-mp4-free.htm
set path="C:\Program Files\ffmpeg-20160522-git-566be4f-win64-shared\bin"; %path%;
@ECHO ON
for %%A in ("*.*") DO ffmpeg -hwaccel dxva2 -i "%%A" -c:v libx264 -q:v 0 -preset veryslow -crf 18 -filter:v "yadif=0:-1:0, scale=trunc(iw/2)*2:trunc(ih/2)*2" -aspect 16:9 -s hd1080 -r 50000/2000 "%%A.mp4"
PAUSE
