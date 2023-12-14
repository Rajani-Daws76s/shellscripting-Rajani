#!/bin/bash
ID=$(id -u) # if you run this in normal user then you will get exact o/p
if [ $ID -ne 0 ]
then
    echo "pls run sudo user"
else
echo "your running with sudo user"
fi
yum install mysql -y
if [ $? -ne 0]
then 
echo "Error: MySQl installation failed"
else
echo "MYSQl installation success"
fi