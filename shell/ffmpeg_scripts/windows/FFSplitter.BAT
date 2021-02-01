SET PATH="C:\Program Files\ffmpeg-20160522-git-566be4f-win64-shared\bin";%PATH%;
ffmpeg -ss 00:00:00 -t 00:36:00 -i final.mp4 -vcodec copy -acodec copy final_p1.mp4
ffmpeg -ss 00:35:30 -i final.mp4 -vcodec copy -acodec copy final_p2.mp4
CMD
