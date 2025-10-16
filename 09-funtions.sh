#!/bin/bash

USERID=$(id -u)
# This fn should validate the previous command and tell whther it is success or not
VALIDATE(){
    if [ $? -ne 0 ]
    then    
        echo "Installation.... FAILURE"
        exit 1
    else
        echo "Installation......success"
    fi
}

if [ $USERID -ne 0 ]
then    
    echo "not a root user, login with root user"
    exit 1  
else
    echo "Root user, proceed with installations"
fi

yum install git -y

VALIDATE $? "Git INstallation success"

yum install postfix -y

VALIDATE $? "Postfix INstallation success"