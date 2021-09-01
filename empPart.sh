#!/bin/bash -x
isparttime=1
isfulltime=2
empRatePerHr=20
randomCheck=$((RANDOM%3))
if [ $isparttime -eq $randomCheck ]
then
empWorkingHr=4
elif [ $isfulltime -eq $randomCheck ]
then
empWorkingHr=8
else
empWorkingHr=0
fi
salary=$(($empRatePerHr*$empWorkingHr))
echo $salary

