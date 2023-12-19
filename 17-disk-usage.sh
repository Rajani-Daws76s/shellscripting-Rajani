#!/bin/bash
DISK-USAGE=$(df -hT grep -vE '\tmp|file')
DISK-Threshold=1
Message=""

while IFS=read -r line
do 
Usage=$(echo $line | awk '{print $6f}' | cut -d % -f1)
Partition=$(echo $line | awk '{print $1f}')
if [ Usage -ge DISK-Threshold ]
then
Message="High disk usage on $Partition:$Partition \n"
fi
done<<<$DISK-USAGE
echo -e "message: $Message"
