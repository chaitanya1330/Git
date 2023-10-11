random_numbers=()
generate_random_number() {
    echo $((RANDOM % 900 + 100))
}


for ((i=0; i<10; i++)); do
    random_numbers[i]=$(generate_random_number)
done


echo "Generated random numbers:"
echo "${random_numbers[@]}"


largest=${random_numbers[0]}
second_largest=${random_numbers[0]}
smallest=${random_numbers[0]}
second_smallest=${random_numbers[0]}

for num in "${random_numbers[@]}"; do
    if ((num > largest)); then
        second_largest=$largest
        largest=$num
    elif ((num > second_largest && num < largest)); then
        second_largest=$num
    fi

    if ((num < smallest)); then
        second_smallest=$smallest
        smallest=$num
    elif ((num < second_smallest && num > smallest)); then
        second_smallest=$num
    fi
done


echo "Second largest element: $second_largest"
echo "Second smallest element: $second_smallest"
