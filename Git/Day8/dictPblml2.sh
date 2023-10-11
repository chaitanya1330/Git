declare -A results

max_occurrences=0
min_occurrences=10

while true; do

    result=$((1 + RANDOM % 6))


    if [ ${results[$result]+_} ]; then
        results[$result]=$((results[$result] + 1))
    else
        results[$result]=1
    fi


    for key in "${!results[@]}"; do
        if [ "${results[$key]}" -eq 10 ]; then
            echo "Number $key reached 10 times."
            exit 0
        fi


        if [ "${results[$key]}" -gt "$max_occurrences" ]; then
            max_occurrences="${results[$key]}"
            max_number="$key"
        fi
        if [ "${results[$key]}" -lt "$min_occurrences" ]; then
            min_occurrences="${results[$key]}"
            min_number="$key"
        fi
    done
done

echo "Number $max_number occurred the most times (10 times)."
echo "Number $min_number occurred the least times ($min_occurrences times)."


