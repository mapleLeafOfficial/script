#!/bin/bash

# 获取当前活动窗口的ID
active_window=$(xdotool getactivewindow)

# 关闭当前活动窗口
xdotool windowkill $active_window

