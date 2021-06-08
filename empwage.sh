#! /bin/bash -x
present=1;
randomcheck=$((RANDOM%2));
if [ $present -eq $randomcheck ];
then
		echo "Employee is present";
		emprateperhr=20;
		emphrs=8;
		salary=$(($emphrs*$emprateperhr));
		echo "Salary of the employee is $salary";
else
		echo "Employee is absent";
		echo "salary is 0";
fi
