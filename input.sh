#!/bin/bash
#echo "enter your name"
#read name
#echo "my name is $name"

echo "enter directory name"
read dir
echo "your directory is $(mkdir $dir)"


echo "removing directory $(rmdir $dir)"

