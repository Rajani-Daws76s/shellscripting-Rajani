#!/bin/bash
ID=$(id -u) # if you run this in normal user then you will get exact o/p
Validate()
{
if [ $1 -ne 0 ]
then
    echo "ERROR:: $2 is failed"
    exit 1
else
    echo "Installing $2 is SUCCESS"
fi
}

if [ $ID -ne 0 ]
then
    echo "pls run sudo user"
    exit 1 # you can give any number other 0
else
echo "your running with sudo user"
fi
yum install mysql -y
Validate $? "installing mysql"
yum install git -y
Validate $? "installing git"