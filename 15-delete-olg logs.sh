SOURCE-DIR=/tmp/shell-scripting-logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#to check whether source directory exist or not
if [ ! -d $SOURCE-DIR ] # ! denotes opposite
then 
echo "$R Source dirctory : $SOURCE-DIR does not exist"
fi 
Files-to-delete=find $SOURCE-DIR - type f -mtime +14 -name "*.log"
while IFS= read -r line
do 
echo "Deleting files: $line"
done<<<$Files-to-delete