+ =
#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[m"

TIMESTAMP=$(date +%F-%h-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

if [id -ne 0]
then
echo "$R ERROR your not running with root user $N"
exit 1 #use other than 0
else 
echo "your in root user"
fi 

validate (){
if [$1 -ne 0]
then 
echo -e "$2 ... $R failed $N "
else 
echo -2 "$2 ... $G Success $N"
fi
}

for package in $@
do
    yum list installed $package >> $LOGFILE
    if [$? -ne 0] #if not installed 
    then
    yum install $package -y >> $LOGFILE
    validate $? intstalling packege 
    else 
    echo -e "package is already installed ..$Y Skipping $N"
    fi
done
