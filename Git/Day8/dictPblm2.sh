echo "Generating a birth month of 50 individuals"
read result


for ((i=1 ; i<=50 ; i++))
do
	echo "$i st Brithday month is:"
	result = "$((3+($RANDOM%10)))"
done

echo "$result"

