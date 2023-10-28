#!/bin/bash

# 获取当前活动窗口的ID
active_window=$(xdotool getactivewindow)

# 设置窗口边框宽度和颜色
xfconf-query -c xfwm4 -p /general/frame_border_width -s 5
xfconf-query -c xfwm4 -p /general/frame_active_color -s '#0000FF'

# 重新加载窗口管理器设置以应用更改
xfwm4 --replace

# 等待片刻以确保新设置已生效
sleep 1

# 最小化并恢复当前窗口以触发重绘
xdotool windowminimize $active_window
xdotool windowactivate $active_window

