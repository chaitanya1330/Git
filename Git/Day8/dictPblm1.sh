echo "Please roll the die"



declare -A dice
dice[roll]="$((1+($RANDOM%6)))"

echo "${dice[roll]}"
