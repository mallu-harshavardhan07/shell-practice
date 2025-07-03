
#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo " error : run with root access "
else
    echo "running with root access "
fi