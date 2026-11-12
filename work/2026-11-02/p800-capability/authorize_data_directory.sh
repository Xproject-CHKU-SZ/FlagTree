#!/usr/bin/env bash
set -uo pipefail
printf '%s\n' '仅为 /data2/zhaoweiming 设置所有者。密码只在 SSH 终端中输入，不会写入脚本或日志。'
ssh -tt -F /home/f/Documents/FlagTree/work/2026-11-02/f06-p800-resources/ssh/config p800-81 \
  "sudo chown zhaoweiming:zhaoweiming /data2/zhaoweiming && stat -c '%U %G %a %n' /data2/zhaoweiming"
authorization_status=$?
if [[ "$authorization_status" == 0 ]]; then
    printf '%s\n' '目录授权成功，可以继续上传测试包。'
else
    printf '命令退出状态：%s\n' "$authorization_status"
fi
read -r -p '按回车关闭此窗口。' unused_reply
