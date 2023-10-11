conversion(){
 
 degF=$(((($degree*2))+32))
 degC=$(((($degree-32))/2))
 if(($num==2))
 then
 	echo "$degF is the conversion of $degree"
 elif(($num==1))
 then
 	echo "$degC is the conversion of $degree"
 else
 	echo "Not valid"
 fi

}

echo "Enter the degress num"
read degree
echo "Enter the type of conversion"
echo "1 is conversion of faren to celsius"
echo "2 is conversion of celsius to faren"
read num


conversion $degree $num
