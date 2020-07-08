# docker-scheduledwol

docker run --name="Scheduled-WOL" --restart="always" --volume="/etc/localtime:/etc/localtime:ro" --network="host"  dylanve115/scheduledwol

Environment variables:
required BROADCAST_IP = Broadcast ip of your network. (usually ends with 255 for Example: "192.168.1.255") 
required MAC_ADDRESS = Mac address of PC you want to wake up (Format: "00:00:00:00:00:00").
required CRONTIME = Set the time in CRONTAB to schedule the wakeup. (Example: "0 12 * * *" starts script everyday on 12:00)
optional TRIGGER_IP = set a IP to trigger wakeup when it this IP comes online (I used my phone ipaddres for Example: "192.168.1.150")

# Example of CRONTIME definition:
.---------------- minute (0 - 59)
|  .------------- hour (0 - 23)
|  |  .---------- day of month (1 - 31)
|  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
|  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
|  |  |  |  |
*  *  *  *  *
