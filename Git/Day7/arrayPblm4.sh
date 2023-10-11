nums=(-1 0 1 2 -1 -4)

find_three_sum() {
    local nums_array=("$@")
    local n=0

    for _ in "${nums_array[@]}"
    do
        ((n++))
    done

    for ((i = 0; i < n - 2; i++))
    do
        for ((j = i + 1; j < n - 1; j++))
        do
            for ((k = j + 1; k < n; k++))
            do
                sum=$((nums_array[i] + nums_array[j] + nums_array[k]))
                if [ $sum -eq 0 ]
                then
                    echo "(${nums_array[i]}, ${nums_array[j]}, ${nums_array[k]})"
                fi
            done
        done
    done
}

echo "Sets of three integers that add up to zero:"
find_three_sum "${nums[@]}"
