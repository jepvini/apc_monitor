#!/usr/bin/env bash

while :
do
  if apcaccess | grep "STATUS   : ONLINE";
  then
    battery="$(apcaccess | grep BCHARGE | awk '{print $3;}')"↴
    python3 /etc/bot/bot_api.py "ON BATTERY: $battery%"↴
    echo hi
  fi
sleep 1
done
