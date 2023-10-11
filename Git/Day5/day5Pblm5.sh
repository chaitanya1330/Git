min_value=999
max_value=100
for ((i = 1; i <= 5; i++))
do
    random_value=$((RANDOM % 900 + 100))
    echo "Random Value $i: $random_value"


    if [ $random_value -lt $min_value ]; then
        min_value=$random_value
    fi

    if [ $random_value -gt $max_value ]; then
        max_value=$random_value
    fi
done


echo "Minimum Value: $min_value"
echo "Maximum Value: $max_value"
