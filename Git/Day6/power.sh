echo "Enter the number"
read n

echo "Getting the powers of 2 upto $n"

for ((i = 1; i <= n; i++))
do
    num=$((2 ** i))
    echo "2^$i = $num"
done

