#! /bin/bash -x
#constants
full_time=1;
part_time=2;
emp_rate_per_hr=20;
num_of_working_days=30
total_salary=0
#variable
for ((day=1; day<=$num_of_working_days; day++))
do
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
wage=$(($emp_rate_per_hr*$emp_hrs));
total_salary=$(($total_salary+wage));
echo "$total_salary";
done
