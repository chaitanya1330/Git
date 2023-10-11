echo "Enter the number"
read n

sum=0

for ((i=1; 1<=n ;i++))
do
	sum=$(( sum + 1/i))
done

echo $sum
