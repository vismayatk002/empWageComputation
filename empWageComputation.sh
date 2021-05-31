#!/bin/sh

 echo " Welcome to Employee Wage Computation Program "


# Check Employee is Present or Absent
ispresent=1

randomnumber=$(($RANDOM%2))

echo $randomnumber

if [ $randomnumber -eq $ispresent ]

then
 
	echo "employee is present"

else

 	echo "employee is absent"

fi