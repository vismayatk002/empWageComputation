#!/bin/sh

echo " Welcome to Employee Wage Computation Program "

isPresent=1
isAbsent=0
wagePerHr=20
workingDays=20
totalHrs=0
fullTime=1
partTime=0
totalAttendance=0
function workHrs(){
	empType=$1
	if [ $empType -eq $fullTime ]
	then
		fullTimeHr=16
		workHr=$(($fullTimeHr))
	else
		partTimeHr=8
		workHr=$(($partTimeHr))
	fi
	echo $workHr
}

while [[ $totalAttendance -lt 20 && $totalHrs -lt 100 ]]
do
	attendance=$(($RANDOM%2))
	case $attendance in
		$isPresent )
				#echo "Employee is Present"
				empType=$(($RANDOM%2))
				#echo "Type" $empType
				((totalAttendance++))
				case $empType in
					$fullTime )
							#echo "Employee Type :Full Time"
							#workHrs $empType
							hr=$(workHrs $empType)
							#echo $hr
							totalHrs=$(($totalHrs + $hr))
							fullTimeEmpWage=$(($wagePerHr * $hr))
							monthlyEmpWage=$(($monthlyEmpWage + $fullTimeEmpWage))
			    		;;
					$partTime )
							#echo "Employee Type :Part Time"
							#workHrs $empType
							hr=$(workHrs $empType)
							#echo $hr
							totalHrs=$(($totalHrs + $hr))
							partTimeEmpWage=$(($wagePerHr * $hr))
							monthlyEmpWage=$(($monthlyEmpWage + $partTimeEmpWage))
    					;;
				esac
			;;
	esac
done
echo "Monthly Wage =" $monthlyEmpWage

echo "Total Attendance :" $totalAttendance

echo "Total Hours :" $totalHrs

