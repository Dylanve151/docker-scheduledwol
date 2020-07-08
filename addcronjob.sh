#!/bin/bash
#crontab time

if [ -z "$CRONTIME" ]
then
	echo "No Crontime"
else
	echo "$CRONTIME root /root/wakeup.sh >/dev/null 2>&1" > /etc/cron.d/wakeup
fi

cat /dev/null
