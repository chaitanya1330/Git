
sum=0
for ((n=1; n<6 ;n++))
do
	num1=$(((1+$RANDOM%100)))
	sum=$(($sum + $num1))
done

echo "The sum is $sum"


