#!/bin/sh

echo " Welcome to Employee Wage Computation Program "

isPresent=1
isAbsent=0
wagePerHr=20
partTimeHr=8
fullTimeHr=16
fullTime=1
partTime=0
workingDays=20
totalHrs=0
totalAttendance=0
while [[ $totalAttendance -lt 20 && $totalHrs -lt 100 ]]
do
	attendance=$(($RANDOM%2))
	case $attendance in
		$isPresent ) #echo "Employee is Present"

					empType=$(($RANDOM%2))
					((totalAttendance++))	 	           
	 	            case $empType in
	 	            	$fullTime ) #echo "Employee Type :Full Time"

									totalHrs=$(($totalHrs + $fullTimeHr))
									fullTimeEmpWage=$(($wagePerHr * $fullTimeHr))
		    						monthlyEmpWage=$(($monthlyEmpWage + $fullTimeEmpWage))
		    				;;	
		    			$partTime ) #echo "Employee Type :Part Time"

									totalHrs=$(($totalHrs + $partTimeHr))
	 								partTimeEmpWage=$(($wagePerHr * $partTimeHr))
		    						monthlyEmpWage=$(($monthlyEmpWage + $partTimeEmpWage))
		    				;;
	 	            esac
			;;
	esac
done
echo "Monthly Wage =" $monthlyEmpWage

echo "Total Attendance :" $totalAttendance

echo "Total Hours :" $totalHrs

 

