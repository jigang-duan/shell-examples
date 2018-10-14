#!/usr/bin/env bash

projects=("svc-manager" "admin" "sms" "log-monitor")

PS3="请选择一个项目："
select project in ${projects[*]};do
  if [ $project ]; then
    echo "请选择了 $project"
    break
  fi
done
