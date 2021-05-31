#!/bin/sh

 echo " Welcome to Employee Wage Computation Program "


# Add part time Employee Wage using swich case statement
isPresent=1
isAbsent=0
wagePerHr=20
partTimeHr=8
fullTimeHr=16
fullTime=1
partTime=0
randomnumber=$(($RANDOM%2))

case $randomnumber in
	$isPresent ) echo "Employee is Present"

				empType=$(($RANDOM%2))
 	           
 	            case $empType in
 	            	$fullTime ) echo "Employee Type :Full Time"
								fullTimeEmpWage=$(($wagePerHr*$fullTimeHr))
	    						echo "Employee Wage =" $fullTimeEmpWage
	    					;;	
	    			$partTime ) echo "Employee Type :Part Time"

 								partTimeEmpWage=$(($wagePerHr*$partTimeHr))
	    						echo "Employee Wage =" $partTimeEmpWage	
 	            			;;
 	            esac

		;;
	$isAbsent  ) echo "Employee is Absent"
		
		;;

esac


 

