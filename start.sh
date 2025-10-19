#!/bin/bash
ffmpeg -re -stream_loop -1 -i "$VIDEO_URL" \
-vcodec libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p \
-g 50 -acodec aac -b:a 128k -ar 44100 -f flv \
"rtmp://a.rtmp.youtube.com/live2/$STREAM_KEY"
