#!/bin/bash
SOURCEDIR="/tmp/shellscript-logs"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#to check whether source directory exist or not
if [ ! -d $SOURCEDIR ] # ! denotes opposite
then 
echo " $R Source dirctory : $SOURCEDIR does not exist $N "
fi 
Filestodelete=find $SOURCEDIR - type f -mtime +14 -name "*.log"
while IFS = read -r line
do 
echo "Deleting files: $line"
done<<<$Filestodelete