#!/bin/bash -x
isPartTime=1
isFullTime=2
empRateperHr=20
empCheck=$((RANDOM%3))
case $empCheck in
     $isPartTime)
                empWorkingHr=4
     ;;
     $isFullTime)
                empWorkingHr=8
     ;;
      *)
                empWorkingHr=0
esac
salary=$(($empRateperHr*$empWorkingHr))


