#!/usr/bin/env bash

vpn_status="$(nmcli con show --active | grep -i vpn | awk '{print $NF}')"
if [ -z ${vpn_status} ]
then
    tmux set -g status-style 'fg=#FFFFFF,bg=#26A269'
else
    echo "${vpn_status}"
    tmux set -g status-style 'fg=#FFFFFF,bg=#F66151'
fi
