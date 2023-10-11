echo "enter the first number"
read a
echo "enter the second number"
read b
echo "enter the number to perform operations from 1 to 4"
read n
case $n in 
	1) sum=$(($a+$b))
	echo "sum is $sum "
	;;
	2) sub=$(($a-$b))
	echo "sub is $sub "
	;;
	3) mul=$(($a*$b))
	echo "mul is $mul "
	;;
	4) div=$(($a/$b))
	echo "div is $div "
	;;
	*) echo "wrong input"
	;;
esac

