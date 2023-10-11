generate_random_number(){
  echo $((100 + RANDOM % 900))
}

numbers=()
for i in {1..10}
do
  numbers+=($(generate_random_number))

done

sorted_numbers=($(printf "%s\n" "${numbers[@]}" | sort -n))

second_largest=${sorted_numbers[-2]}
second_smallest=${sorted_numbers[1]}

echo "Generated numbers: ${numbers[*]}"
echo "Sorted numbers: ${sorted_numbers[*]}"
echo "Second largest element: $second_largest"
echo "Second smallest element: $second_smallest"
