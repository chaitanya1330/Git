echo "Enter the year"
read a
if (($a%400==0 || $a%100!=0 && $a%4==0))
then 
	echo "The year $a is a leap Year"
else
	echo "Is not a leap Year"
fi
