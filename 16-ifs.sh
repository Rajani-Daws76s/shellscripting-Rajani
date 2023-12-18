!/bin/bash
file="/etc/passwd"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#to check whether source directory exist or not
if [ ! -f $file ] # ! denotes opposite
then 
echo " $R Source file : $file does not exist $N "
fi 
while IFS=":" read -r username password 
do 
echo "username :$username"
echo "password :$password"
done<<<$file