#!/bin/bash -x
isPartTime=1
isFullTime=2
totalSalary=0
empRateperHr=20
workingDays=20
for (( day=1;day<=workingDays;day++ ))
do
empCheck=$((RANDOM%3))
case $empCheck in 
         $isPartTime)
            empHrs=4
         ;;
         $isFullTime)
               empHrs=8
         ;;
         *)
            empHrs=0
esac
salary=$(($empRateperHr*$empHrs))
totalsalary=$(($totalsalary+$salary))
done
