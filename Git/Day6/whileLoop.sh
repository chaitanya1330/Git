echo "enter n"
read n
powerOfTwo=1
s=0
while [ $powerOfTwo -lt 256 ] && [ $n -ge 0 ] && [ $s -le $n ]
do
    echo "2^$s = $powerOfTwo"
    powerOfTwo=$((powerOfTwo * 2))
    s=$((s + 1))
done
