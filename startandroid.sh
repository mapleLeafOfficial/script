#!/bin/bash

# 列出所有连接的Android设备
devices=$(adb devices | grep -v "List" | cut -f 1)

# 检查是否连接了设备
if [ -z "$devices" ]; then
    echo "没有找到连接的设备。"
    exit 1
fi

# 将设备设置为文件传输模式
for device in $devices; do
    adb -s $device shell svc usb setFunctions mtp
    echo "设备 $device 设置为文件传输模式。"
done

echo "完成。"

