
#!/bin/bash
userid=$(id -u)
if [ $id -ne 0 ]
then
    echo " error : Run with root access"
    exit 1
else
    echo " you are running with root access "
fi
dnf install mysqll -y
if [ $? -ne 0 ]
then
  echo " installing mysql is failed "
else
    echo " mysql installed successfully "
fi