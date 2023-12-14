#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo "pls run sudo user"
else
echo "your running with sudo user"
fi