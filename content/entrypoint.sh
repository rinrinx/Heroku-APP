#!/bin/sh

python3 -m pip install -U yt-dlp &
mkdir -p /mnt/data/config /mnt/data/downloads /mnt/data/videos
mv /.aria2allinoneworkdir/bashrc /mnt/data/config/
echo ${RCLONE_CONFIG_BASE64} | base64 -d  >/mnt/data/config/rclone.conf

exec runsvdir -P /etc/service