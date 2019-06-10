#!/bin/bash

FFMPEG_CMD="your_ffmpeg"
VIDEO_FILE="googleio.mp4"
YOUR_RTMP_URL="rtmp://104.199.220.166/myhlsdemo"

$FFMPEG_CMD -re -i $VIDEO_FILE -acodec copy -vcodec copy -f flv $YOUR_RTMP_URL

