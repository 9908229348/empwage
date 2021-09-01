#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
No_workingDays=20
Max_Hr_In_Month=100
totalempHrs=0
totalworkingDays=0
while [[ $totalempHrs -lt $Max_Hr_In_Month && $totalworkingDays -lt $No_workingDays ]]
do
((totalworkingDays++))
empCheck=$((RANDOM%3))
case $empCheck in
       $isPartTime)
           empHrs=4
          ;;
       $isPartTime)
            empHrs=8
          ;;
        *)
           empHrs=0
esac
totalempHrs=$(($totalempHrs+$empHrs))
done
totalsalary=$(($totalempHrs*$empRatePerHr))
