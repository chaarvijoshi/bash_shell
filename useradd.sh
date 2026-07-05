#!/bin/bash

if [ $(id -u) -eq 0 ]; then
        read -p "enter username " username
        read -s -p "enter password " password
        egrep "^$username" /etc/passwd>/dev/null
        if [ $? -eq 0 ];then
                echo "$username exist"
                exit 1
        else
                pass=$(perl -e 'print crypt($ARGV[0],"password")' $password)
                useradd -m -p $pass $username
                [ $? -eq 0 ] && echo "user has been added" || echo "failed to add"
        fi
else
        echo "only root can add "
        exit 2
fi

