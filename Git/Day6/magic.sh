echo "Think of a number between 1 and 100."

low=1
high=100
response=""

while [ "$response" != "C" ]
do
    guess=$(( (low + high) / 2 ))

    echo "Is your number $guess? (Enter 'L' for lower, 'H' for higher, 'C' for correct)"
    read response

    if [ "$response" = "L" ]; then
        high=$((guess - 1))
    elif [ "$response" = "H" ]; then
        low=$((guess + 1))
    elif [ "$response" != "C" ]; then
        echo "Invalid input. Please enter 'L', 'H', or 'C'."
    fi
done

echo "Great! Your number is $guess."
