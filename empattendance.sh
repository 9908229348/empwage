#!/bin/bash -x
empcheck=$((RANDOM%2))
if [ $empcheck -eq 1 ]
then
echo "Employee is present"
else
echo "Employee is absent"
fi
