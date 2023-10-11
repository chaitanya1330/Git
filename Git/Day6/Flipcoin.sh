heads_count=0
tails_count=0
total_flips=0

while [ $heads_count -lt 11 ] && [ $tails_count -lt 11 ]
do
    result=$((RANDOM % 2))
    
    if [ $result -eq 0 ]; then
        echo "Heads"
        ((heads_count++))
    else
        echo "Tails"
        ((tails_count++))
    fi
    
    ((total_flips++))
done

if [ $heads_count -eq 11 ]; then
    echo "Heads wins!"
else
    echo "Tails wins!"
fi

echo "Total flips: $total_flips"
