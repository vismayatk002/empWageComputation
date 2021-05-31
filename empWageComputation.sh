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
workingDays=20
randomnumber=$(($RANDOM%2))

case $randomnumber in
	$isPresent ) echo "Employee is Present"

				empType=$(($RANDOM%2))
 	           
 	            case $empType in
 	            	$fullTime ) echo "Employee Type :Full Time"

								fullTimeEmpWage=$(($wagePerHr*$fullTimeHr))
	    						echo "Employee Wage =" $fullTimeEmpWage

								monthlyEmpWage=$((($wagePerHr*$fullTimeHr) * $workingDays))
	    						echo "Monthly Wage =" $monthlyEmpWage

	    					;;	
	    			$partTime ) echo "Employee Type :Part Time"

 								partTimeEmpWage=$(($wagePerHr*$partTimeHr))
	    						echo "Employee Wage =" $partTimeEmpWage

	    						monthlyEmpWage=$((($wagePerHr*$partTimeHr) * $workingDays))
	    						echo "Monthly Wage =" $monthlyEmpWage
 	            			;;
 	            esac

		;;
	$isAbsent  ) echo "Employee is Absent"
		
		;;

esac


 

