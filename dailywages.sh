#!/bin/bash -x

Present=1
randomcheck=$((RANDOM%2))

if [ $Present -eq $randomcheck ]
then
	employeerateperhr=10
	emphrs=8
	salary=$(($employeerateperhr*$emphrs))
else
	salary=0
fi

