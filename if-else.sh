#!/bin/bash

read -p "what is your age: " age
if [ $age -gt 18 ]
then 
        echo "eligible to vote"
else
        echo "cannot vote"
fi







