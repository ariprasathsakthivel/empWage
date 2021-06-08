#! /bin/bash -x
full_time=1;
part_time=2;
emp_rate_per_hr=20;
num_of_working_days=20;
max_hrs_in_month=100;
#variable
total_emp_hrs=0;
total_working_days=0;
function getworkinghours() {
	case $1 in
		$full_time) emp_hrs=8
		;;
		$part_time) emp_hrs=4
		;;
		*) emp_hrs=0
		;;
	esac
	echo $emp_hrs;
}

while [ $total_emp_hrs -lt $max_hrs_in_month -a $total_working_days -lt $num_of_working_days ]
do
	total_working_days=$(($total_working_days+1));
	work_hrs="$( getworkinghours $((RANDOM%3)) )";
	total_emp_hrs=$(($total_emp_hrs+$work_hrs));
done
wage=$(($total_emp_hrs*$emp_rate_per_hr));
