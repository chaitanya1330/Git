perHrSalary=20
workHour=0;
totalSalary=0;

for ((day=1; day<=20 ;day++))
do
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
		echo "Employee is absent";
		workHour=0;
		;;

		1)
		echo "Employee is present";
		workHour=8;
		;;

		2)
		echo "Employee is working as part time";
		workHour=4;
		;;
	esac
	salary=$(($perHrSalary * $workHour));
	totalSalary=$(($totalSalary + $salary));
done

echo "Employee has earned $totalSalary $salary in a month";



