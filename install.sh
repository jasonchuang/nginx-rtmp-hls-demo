#!/bin/bash

NGINX_SOURCE="nginx-1.16.0"
YOUR_NGINX_RTMP_MODULE_SOURCE="/your_home/nginx-rtmp-hls-demo/nginx-rtmp-module"

# install packages for nginx
sudo apt-get install build-essential libpcre3 libpcre3-dev libssl-dev ffmpeg zlib1g-dev

# download nginx source
wget http://nginx.org/download/"${NGINX_SOURCE}.tar.gz"
tar -zxvf "${NGINX_SOURCE}.tar.gz"

# download nginx-rtmp-module source
git clone https://github.com/arut/nginx-rtmp-module

# install nginx
cd $NGINX_SOURCE
    ./configure --add-module=$YOUR_NGINX_RTMP_MODULE_SOURCE
    make && sudo make install
cd -

# config nginx.conf /usr/local/nginx/conf/nginx.conf
sudo cp nginx.conf /usr/local/nginx/conf/

# add video tag into /usr/local/nginx/html/hls.html
sudo cp player_player.html /usr/local/nginx/html/

# start nginx
sudo /usr/local/nginx/sbin/nginx
# reload nginx config
# sudo /usr/local/nginx/sbin/nginx –s reload
# stop nging
# sudo /usr/local/nginx/sbin/nginx -s stop
#
