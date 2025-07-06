
#!/bin/bash
red='\e[31m'
green='\e[32m'
yellow='\e[33m'
reset='\e[0m'

userid=$(id -u)
if [ $userid -eq 0 ]
then
    echo " $green you are running with root access $reset "
else
    echo " $red eror :$reset you are not running with root access "
    exit 1
fi
validate(){
    if [ $1 -eq 0 ]
    then
        echo " $green installing $2 is success $reset "
    else
        echo " $red error: $reset occured while installing $2"
        exit 1
    fi
} 

dnf list installed nginx 
if [ $? -ne 0 ]
then
    echo " $green you are installing nginx  $reset "
    dnf install nginx  -y 
    validate $? "nginx"
else 
     echo "$yellow nginx  is already installed $reset "
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo " $green you are installing mysql  $reset "
    dnf install mysql  -y
    validate $? "mysql"
else 
     echo "$yellow mysql  is aready installed $reset"
fi