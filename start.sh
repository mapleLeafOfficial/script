#!/bin/bash

# 启动Spotify并播放音乐
spotify &

# 启动Chrome
google-chrome &

# 启动两个文件管理器（假设你使用的是Nautilus）
dolphin  &
dolphin  &

# 输出启动完成
echo "所有服务已启动完成"
