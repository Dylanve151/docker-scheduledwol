#!/bin/bash
#crontab time

if [ -z "$CRONTIME" ]
then
	echo "No Crontime"
else
	echo "$CRONTIME root sh /root/wakeup.sh >/dev/null 2>&1" >> /etc/crontab
fi
