#!/bin/sh

 echo " Welcome to Employee Wage Computation Program "


ispresent=1
wagePerHr=20
fullDayHr=8
randomnumber=$(($RANDOM%2))

echo $randomnumber

if [ $randomnumber -eq $ispresent ]

then
 
	echo "employee is present"
	dailyEmpWage=$(($wagePerHr*$fullDayHr))
	echo "Daily Wage =" $dailyEmpWage

else

 	echo "employee is absent"

fi



