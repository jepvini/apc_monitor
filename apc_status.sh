#!/usr/bin/env bash

while :
do
  if  apcaccess | grep "STATUS   : ONLINE";
  then echo ONLINE
  fi
  sleep 1
done
