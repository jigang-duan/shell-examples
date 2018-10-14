#!/bin/bash

# 获取随机8位字符串
# 1
echo $RANDOM | md5sum | cut -c 1-8
# 2
openssl rand -base64 4
# 3

# 获取随机8位数字
# 1
echo $RANDOM |cksum |cut -c 1-8
# 2
openssl rand -base64 4 |cksum |cut -c 1-8

