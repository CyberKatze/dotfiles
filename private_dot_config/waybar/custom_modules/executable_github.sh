#!/bin/bash
if [ -f $HOME/.config/gh/notification.token ]; then
  token=`cat ${HOME}/.config/gh/notification.token`
  count=`curl -u username:${token} https://api.github.com/notifications`
  tooltip="Click to open"

  if [[ "$count" != "0" ]]; then
      echo '{"text":'$count', "tooltip":"'$tooltip'", "class":"$class"}'
  fi
fi
