#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
numofWorkingDays=20
empRatePerHr=20

totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numofWorkingDays ]]
do
     ((totalWorkingDays++))

     randomCheck=$((RANDOM%3))
     case $randomCheck in
				$isPartTime )
					empHrs=4
				;;
				$isFullTime )
					empHrs=8
				;;
				*)
					empHrs=0
				;;
esac

	totalEmpHr=$(($totalEmpHr+$empHrs))
done
	totalsalary=$(($totalEmpHr*$empRatePerHr))

