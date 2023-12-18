
#! /bin/bash
USERNAME=$1
PASSWORD=$2
echo "Username : ${USERNAME} , Password : ${PASSWORD}"

*************

#! /bin/bash

echo "Pls enter USERNAME"
read USERNAME #user name will displayed at runtime
echo "username is $USERNAME"

echo "Pls enter USERNAME"
read -s USERNAME # "-s" will hide the content while you typing user name 
echo "username is $USERNAME"


