#!/bin/sh

 echo " Welcome to Employee Wage Computation Program "


# Add part time Employee Wage
ispresent=1
wagePerHr=20
partTimeHr=8
fullTimeHr=16
fullTime=1
randomnumber=$(($RANDOM%2))
echo $randomnumber

if [ $randomnumber -eq $ispresent ]

then
	echo "Employee is Present"
 	empType=$(($RANDOM%2))
 	echo $empType
 	if [ $empType -eq $fullTime ]
 	then
 		echo "Employee Type :Full Time"

 		fullTimeEmpWage=$(($wagePerHr*$fullTimeHr))
	    echo "Employee Wage =" $fullTimeEmpWage
 	else
 		echo "Employee Type :Part Time"

 		partTimeEmpWage=$(($wagePerHr*$partTimeHr))
	    echo "Employee Wage =" $partTimeEmpWage	
	fi
else

 	echo "Employee is Absent"

fi



