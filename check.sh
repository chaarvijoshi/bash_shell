#!/bin/bash 

echo "enter directory"
read dir
if [ -d $dir  ]
then
        echo "exist"
else
        echo "not exist"
fi
