#!/usr/bin/env bash

declare -A projects=(["registry"]="注册中心" ["user-service"]="用户服务")

PS3="请选择一个项目："
select project in ${!projects[*]} "Exit（退出）";do
  if [ "$project" = "Exit（退出）" ]; then
    echo "谢谢使用！Good-Bye！"
    exit
  fi
  if [ $project ];then
    break
  fi
done
