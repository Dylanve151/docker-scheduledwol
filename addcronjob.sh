#!/bin/bash
#crontab time

if [ -z "$CRONTIME" ]
then
  echo "No Cron time"
else
  echo "$CRONTIME root sh /root/wakeup.sh >/dev/null 2>&1" >> /etc/crontab
fi