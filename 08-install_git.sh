#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then    
    echo "not a root user, login with root user"
    exit 1  
else
    echo "Root user, proceed with installations"
fi

yum install git -y

if [ $? -ne 0 ]
then    
    echo "Installation of git is not success"
    exit 1
else
    echo "Installation of git success"
fi

yum install postfix -y

if [ $? -ne 0 ]
then    
    echo "Installation of postfix is not success"
    exit 1
else
    echo "Installation of postfix success"
fi