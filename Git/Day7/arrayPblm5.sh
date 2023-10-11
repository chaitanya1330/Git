repeated_digits=()
for ((n = 10; n <= 99; n++))
do
	x=$((n / 10))
	y=$((n % 10))
	if [ "$x" -eq "$y" ]
	then
		repeated_digits+=("$n")
	fi
done

echo "digits that are repeated twice from 0 to 100 :"
for digit in "${repeated_digits[@]}"; do
	echo "$digit"
done

