#!/usr/bin/env bash

# 利用for循环将ping通就跳出循环继续，如果不跳出就会走到打印ping失败

ping_success_status() {
    if ping -c 1 $IP >/dev/null; then
        echo "$IP Ping is successful."
        return 0
    fi
    return 1
}

IP_LIST="192.168.18.1 192.168.1.1 192.168.18.2"
for IP in $IP_LIST; do
    if ping_success_status; then
        continue
    fi
    if ping_success_status; then
        continue
    fi
    if ping_success_status; then
        continue
    fi
    echo "$IP Ping is failure!"
done