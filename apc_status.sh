#!/usr/bin/env bash

  if apcaccess | grep "STATUS   : ONLINE";
  then
    battery="$(apcaccess | grep BCHARGE | awk '{print $3;}')"↴
    python3 /etc/bot/bot_api.py "ON BATTERY: $battery%"↴
    if apcaccess | grep "STATUS   : ONLINE";
    then
      python3 /etc/bot/bot_api.py "BATT ONLINE"↴
      exit
    fi
  fi
