#! /bin/bash -x
parttime=1;
fulltime=2;
emprateperhr=20;
randomcheck=$((RANDOM%3));
case $randomcheck in
	$fulltime)
		emphrs=8
		;;
	$partime)
		emphrs=4
		;;
	*)
		emphrs=0
		;;
esac
salary=$(($emphrs*$emprateperhr));
echo "salary of the employee is $salary";
