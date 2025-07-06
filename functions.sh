
#!/bin/bash
userid=$(id -u)
if [ $userid -eq 0 ]
then
    echo " you are running with root access "
else
    echo " eror : you are not running with root access "
    exit 1
fi
validate(){
    if [ $1 -eq 0 ]
    then
        echo " installing $2 is success "
    else
        echo " error occured while installing $2"
        exit 1
    fi
} 

dnf list installed nginx 
if [ $? -ne 0 ]
then
    echo " you are installing nginx "
    dnf install nginx  -y 
    validate $? "nginx"
else 
     echo " nginx  is already installed "
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo " you are installing mysql "
    dnf install mysql  -y
    validate $? "mysql"
else 
     echo "  mysql  is aready installed "
fi