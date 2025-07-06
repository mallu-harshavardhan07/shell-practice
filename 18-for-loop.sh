
#!/bin/bash

# for i in {1..100}
# do
#    echo  "$i"
# done

red='\e[31m'
green='\e[32m'
yellow='\e[33m'
reset='\e[0m'

packages=("nginx" "mysql" )
userid=$(id -u)
if [ $userid -eq 0 ]
then
    echo  -e " ${green} you are running with root access ${reset} "
else
    echo  -e " ${red} eror :${reset} you are not running with root access "
    exit 1
fi
validate(){
    if [ $1 -eq 0 ]
    then
        echo -e " ${green} installing $2 is success ${reset} "
    else
        echo -e " ${red} error: ${reset} occured while installing $2"
        exit 1
    fi
} 
for package in "${packages[@]}"
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then
        echo -e " ${green} you are installing $package  ${reset} "
        dnf install $package  -y 
        validate $? "$package"
    else 
        echo -e "${yellow} $package is already installed ${reset} "
    fi
done

# dnf list installed mysql
# if [ $? -ne 0 ]
# then
#     echo -e " ${green} you are installing mysql  ${reset} "
#     dnf install mysql  -y
#     validate $? "mysql"
# else 
#      echo -e "${yellow} mysql  is aready installed ${reset}"
# fi