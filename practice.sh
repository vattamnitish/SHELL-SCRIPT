#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"


VALIDATE (){
    if [ $1 -ne 0 ]
    then
    echo -e "$2... $R is failure $N"
    exit 1
    else
    echo -e "$2.... $G is sucess $N"
    fi

}


USERID=$(id -u)
if [ $USERID -ne 0 ]

    then
    echo "please run the scripr in root access"
    exit 1
fi

yum install mysql -y &>>$LOGFILE
VALIDATE $? "INSTALLING my sql"
   
yum install postfix -y &>>$LOGFILE
VALIDATE $? "INSTALLING post fix"






