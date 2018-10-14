#!/usr/bin/env bash

# 提示输入“y/n”，结果保存到变量needbackup中：
while [[ ! $needbackup =~ ^[yn]$ ]]; do
  read -e -p "是否备份：（y/n）？" -i "y" needbackup
done
echo "选择了 $needbackup"

# 或：
while [ "$confirm" != "y" ] && [ "$confirm" != "n" ]; do
  read -e -p "以上信息是否正确？(y/n)？" -i "y" confirm
done
echo "选择了 $confirm"