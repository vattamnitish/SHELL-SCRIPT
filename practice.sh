#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]

    then
    echo "please run the scripr in root access"
    exit 1
fi

yum install mysql -y
if [ $? -ne 0]
    then
    echo "installation of my sql is error"
    else
    echo "installation of my sql is sucess"
fi
yum install postfix -y
if [ $? -ne 0 ]
    then
    echo "installation of post fix is error"
    else
    echo "installation of postfix is sucess"
fi




