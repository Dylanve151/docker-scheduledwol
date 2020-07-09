#!/bin/bash
#crontab time

if [ -z "$CRONTIME" ]
then
	echo "No Crontime"
else
	echo "$CRONTIME root /root/wakeup.sh >>" > /etc/cron.d/wakeup
	echo "" > /etc/cron.d/wakeup
fi
service cron start
ping -i 1800 localhost
