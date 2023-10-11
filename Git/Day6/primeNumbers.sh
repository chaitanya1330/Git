prime(){

	if [ $n -le 2 ]
	then
		echo "Enter correct number"
	fi

	flag=0
	for ((i=2;i<$n;i++))
	do
		if(($n%i==0))
		then
			flag=1
		fi
	done
	if((flag==0))
	then
		echo "Given Num is prime num"
	else
		echo "Not a prime"
	fi
}
 

echo "Enter a number to check prime"
read n
prime $n
 
