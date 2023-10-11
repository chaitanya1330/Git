
echo "Enter the starting number"
read num1
echo "Enter the Ending number"
read num2




for ((i=num1;i<=num2;i++))
do
	
        flag=0
        for ((j=2;j<i;j++))
        do
                if((i%j==0))
                then
                        flag=1
                fi
        done
	if((flag==0))
	then
		echo " $i is prime num"
	fi
done


