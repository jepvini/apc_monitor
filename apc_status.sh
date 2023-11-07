#!/usr/bin/env bash

if apcaccess | grep "STATUS   : ONBATT" 1>/dev/null;
then
    battery="$(apcaccess | grep BCHARGE | awk '{print $3;}')"↴
    python3 /etc/bot/bot_api.py "ON BATTERY: $battery%"↴
    if apcaccess | grep "STATUS   : ONLINE" 1>/dev/null;
    then
        python3 /etc/bot/bot_api.py "BATT ONLINE"↴
        exit
    fi
fi
