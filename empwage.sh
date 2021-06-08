  
#! /bin/bash -x
#constants
full_time=1;
part_time=2;
emp_rate_per_hr=20;
num_of_working_days=20;
max_hrs_in_month=100;

#variable
total_emp_hrs=0;
total_working_days=0;
while [ $total_emp_hrs -lt $max_hrs_in_month -a $total_working_days -lt $num_of_working_days ]
do
	((total_working_days++))
	emp_check=$((RANDOM%3)) #generating a random number
	case $emp_check in
		$full_time)
			emp_hrs=8
		;;
		$part_time)
			emp_hrs=4
		;;
		*)
			emp_hrs=0
		;;
	esac
total_emp_hrs=$(($total_emp_hrs+$emp_hrs));
done
wage=$(($emp_rate_per_hr*$total_emp_hrs));
echo "$wage";
