#!/bin/bash

VIDEO_FILE="your_video.mp4"
YOUR_RTMP_URL="rtmp://104.199.220.166/myapp"

ffmpeg -re -i $VIDEO_FILE -acodec copy -vcodec copy -f flv $YOUR_RTMP_URL

