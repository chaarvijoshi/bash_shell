#!/bin/bash

pass_arg(){
echo "your number is : $1"
}

num=$((RANDOM%10 + 1))
pass_arg $num

