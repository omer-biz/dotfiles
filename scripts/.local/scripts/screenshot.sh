#!/bin/sh

pwd=$(pwd)
pic_name="screenshot_$(date "+%h_%d_%I:%M:%S_%p").png"

mkdir -p "$pwd/Pictures"
scrot --select "$pwd/Pictures/$pic_name"

echo -n "./Pictures/$pic_name" | xclip
