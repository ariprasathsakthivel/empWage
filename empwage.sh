#! /bin/bash -x
parttime=1;
fulltime=2;
emprateperhr=20;
randomcheck=$((RANDOM%3));
if [ $fulltime -eq $randomcheck ];
then
		echo "Employee is fulltime";
		emphrs=8;
elif [ $parttime -eq $fulltime ];
then
		emphrs=4;
else
		emphrs=0;
		fi
salary=$(($emphrs*$emprateperhr));
echo "salary of the employee is $salary";
