#!/usr/bin/env bash
set -euo pipefail
login_root="$(cd -- "$(dirname -- "$0")" && pwd)"
login_host="${1:-p800-81}"
case "$login_host" in p800-81|p800-152) ;; *) exit 2 ;; esac
printf '请在下面的 SSH 提示中输入密码（输入时不会显示字符）。\n'
ssh -F "$login_root/ssh/config" -MNf "$login_host"
ssh -F "$login_root/ssh/config" -O check "$login_host"
printf '\n连接已建立，密码未保存。可以返回聊天，继续 P800 测试。\n'
