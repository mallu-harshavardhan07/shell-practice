
#!/bin/bash
userid=$(id -u)
if [ $userid  -eq 0 ]
then 
    echo " you are running with root access "
else
    echo " error : you are not running with root access "
    exit 1
fi
dnf list installed mysql
if [ $? -ne 0 ]
then
    echo " you are installing mysql"
    dnf install mysql -y
    if [ $? -eq 0 ]
    then
        echo " you installed mysql succesfully "
    else
        echo " error :mysql not installed succesffuly "
        exit 1
    fi
else
    echo " mysql aready installed "
fi  