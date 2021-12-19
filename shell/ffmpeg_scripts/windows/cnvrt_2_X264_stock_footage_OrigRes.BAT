@ECHO OFF
rem alternative filter for better (but very slow) conversion
rem -filter:v "yadif=1:-1:0, mcdeint=0:0:20, framestep=2, hqdn3d=1.5:1.5:6:6, scale=trunc(iw/2)*2:trunc(ih/2)*2"
REM https://www.macxdvd.com/mac-dvd-video-converter-how-to/ffmpeg-avi-to-mp4-free.htm
REM https://superuser.com/questions/1556953/why-does-preset-veryfast-in-ffmpeg-generate-the-most-compressed-file-compared
REM Preset Options:
REM ultrafast
REM superfast
REM veryfast
REM fast
REM medium
REM slow
REM slower
REM veryslow
REM 'veryslow' results in better compression and smaller file size, thus, the
REM produced files may be of compromised (slightly) quality.
REM It also requires more CPU time to encode. The converted files are often
REM hard to deal with when used in NLE timelines as stock footage.

REM Whereas, 'ultrafast' produces much bigger converted files, but the generated
REM files are usually of better quality due to less compression.

REM Slow results in high compression. Similarly, '-crf 0' means lossless,
REM hence, it produces bigger files. '-crf 26' means high compression, so the
REM converted files take less disc space, and the quality of the highly
REM compressed files are generally a little worse. The reasonable range is
REM -crf 18 to 20', -preset superfast to fast.

REM I chose -crf 0 (losless), and -preset fast (visually near-losless). The resulting
REM files are easier to deal with when used in NLE timelines as
REM stock footage. The good thing is, the produced files are not too big to keep.

set path="C:\Program Files\ffmpeg-20160522-git-566be4f-win64-shared\bin"; %path%;
@ECHO ON

for %%A in ("*.*") DO ffmpeg -hwaccel dxva2 -i "%%A" -c:v libx264 -q:v 0 -preset fast -crf 0 -filter:v "yadif=0:-1:0, scale=trunc(iw/2)*2:trunc(ih/2)*2" -r 50000/2000 "%%A.mp4"
PAUSE
