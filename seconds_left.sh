#!/usr/bin/env bash

seconds_left=10
echo "倒计时${seconds_left}秒开始……"
while [ $seconds_left -gt 0 ];do
  echo -n $seconds_left
  sleep 1
  seconds_left=$(($seconds_left - 1)) #变量减一
  echo -ne "\r \r" #清除本行文字
  # do some other thing，比如等待某个进程退出结束...
done