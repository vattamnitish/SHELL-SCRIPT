#!/bin/bash

USERID=$(id-u)
if [ USERID -ne 0 ]

    then
    echo "please run the scripr in root access"
    exit 1
fi

yum install mysql -y



