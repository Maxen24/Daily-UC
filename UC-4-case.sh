#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
RandomCheck=$((RANDOM%3))

case $RandomCheck in
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

salary=$(($empHrs*$empRatePerHr))
