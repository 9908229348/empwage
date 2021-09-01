#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
No_workingDays=20
Max_Hr_In_Month=100
totalempHrs=0
totalworkingDays=0
function getWorkingHrs() {
case $1 in
       $isPartTime)
           empHrs=4
          ;;
       $isFullTime)
            empHrs=8
          ;;
        *)
           empHrs=0
esac
echo $empHrs
}
function getEmpWage() {
local empHrs=$1
echo $(($empHrs*$empRatePerHr))
}
while [[ $totalempHrs -lt $Max_Hr_In_Month && $totalworkingDays -lt $No_workingDays ]]
do
((totalworkingDays++))
empHrs="$( getWorkingHrs $((RANDOM%3)) )"
totalempHrs=$(($totalempHrs+$empHrs))
dailyWage[$totalworkingDays]="$( getEmpWage $empHrs )"
done
totalsalary=$(($totalempHrs*$empRatePerHr))
echo "Daily Wages" ${dailyWage[@]}
