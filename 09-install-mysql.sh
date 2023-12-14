#!/bin/bash
if (id -u -ne 0)
then
    echo "pls run sudo user"
else
echo "your running with sudo user"
fi