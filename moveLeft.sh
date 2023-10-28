#!/bin/bash

# 获取当前活动窗口的ID
active_window=$(xdotool getactivewindow)

# 获取屏幕的宽度和高度
screen_width=$(xdotool getdisplaygeometry | awk '{print $1}')
screen_height=$(xdotool getdisplaygeometry | awk '{print $2}')

# 设置新的窗口位置和大小
new_x=0
new_y=0
new_width=$((screen_width / 2))
new_height=$screen_height

# 移动和调整窗口大小
xdotool windowsize $active_window $new_width $new_height
xdotool windowmove $active_window $new_x $new_y

