#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
Message=""

while IFS= read line
do 
Usage=$(echo $line | awk '{print $6f}' | cut -d % -f1)
Partition=$(echo $line | awk '{print $1f}')
if [ $Usage -ge $DISK_THRESHOLD ]
then
Message="High disk usage on $Partition:$Usage \n"
fi
done<<<$DISK-USAGE
echo -e "message : $Message"
