
#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo " error : run with root access "
else
    echo "running with root access "
fi
dnf install mysql -y
if [ $? -eq 0 ]
then
    echo " installing my sql is success "
else 
    echo " mysql is NOT INSTALLED . try again "
fi