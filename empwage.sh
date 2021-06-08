#!/bin/bash -x
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HR=20
NUM_OF_WORKING_DAYS=10
MAX_HRS_IN_MONTH=50
#Variable
totalEmpHrs=0
totalWorkingDays=0
function getWorkingHours() {
   case $1 in
      $IS_FULL_TIME)
      empHrs=8
      ;;
      $IS_PART_TIME)
      empHrs=4
      ;;
		*)
		empHrs=0
		;;
		esac
		echo $empHrs
}

function calculateWage() {
	workHours=$1
	wage=$(($EMP_RATE_PER_HR*$workHours))
	echo $wage
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
   empCheck=$((RANDOM%2))
	workHours="$( getWorkingHours $empCheck )"
	totalEmpHrs=$(($totalEmpHrs+$workHours))
	empDailyWage[$totalWorkingDays]="$( calculateWage $workHours )"
done
wage=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo ${empDailyWage[@]}
