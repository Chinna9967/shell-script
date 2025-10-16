#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne o ]
then    
    echo "not a root user, login with root user"
    exit 1  
else
    echo "Root user, proceed with installations"
fi

yum install git -y