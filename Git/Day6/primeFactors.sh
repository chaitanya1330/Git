primeFactors=()

prime(){

        if [ $j -le 2 ]
        then
                echo "Enter correct number"
        fi

        flag=0
        for ((i=2;i<$j;i++))
        do
                if(($j%i==0))
                then
                        flag=1
                fi
        done
        if((flag==0))
        then
		primeFactors+=("$j")
                
        fi
}




echo "Enter the Number:"
read n

for ((j=2 ; j<=n ; j++))
do 
	if (($n%j==0))
	then
		prime $j
	fi
done
    
for digit in "${primeFactors[@]}"; do
        echo "$digit"
done

