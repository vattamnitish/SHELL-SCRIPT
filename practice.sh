#!/bin/bash
validate (){
    if [ $1 -ne 0 ]
    then
    echo "$2 is failure"
    exit 1
    else
    echo "$2 is sucess"
    fi

}


USERID=$(id -u)
if [ $USERID -ne 0 ]

    then
    echo "please run the scripr in root access"
    exit 1
fi

yum install mysql -y
VALIDATE $? "INSTALLING my sql"
   
yum install postfix -y
VALIDATE $? "INSTALLING post fix"






