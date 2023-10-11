money=100
betAmount=1
while [[ $money -gt 0 && $money -lt 200 ]]
do 
	play=$((RANDOM%2))
	if(($play==0))
	then
		money=$(($money-$betAmount))
	else
		money=$(($money+$betAmount))
	fi
done
if(($money==0))
then 
	echo "Gambler lost"
else
	echo "Gambler won"
fi
