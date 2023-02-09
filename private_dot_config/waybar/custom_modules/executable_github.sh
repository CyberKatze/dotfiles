#!/bin/bash

token=`cat ${HOME}/.config/gh/notification.token`
count=`curl -u username:${token} https://api.github.com/notifications | jq '. | length'`
tooltip="Click to open"

if [[ "$count" != "0" ]]; then
    echo '{"text":'$count', "tooltip":"'$tooltip'", "class":"$class"}'
fi
