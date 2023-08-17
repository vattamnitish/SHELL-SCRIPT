#!/bin/bash

# our program goal is to install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
# else
#     echo "INFO:: You are root user"
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y
if [ $? -ne 0 ]
then
    echo "Installation of mysql is error"
    exit 1
else
    echo "Installation of my sql is sucess"
fi
yum install postfix -y
if [ $? -ne 0 ]
then
    echo "installation of post fix is error"
    exit 1
else
    echo "installation of postfix is sucess"
fi
