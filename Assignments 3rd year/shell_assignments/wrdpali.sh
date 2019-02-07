echo -n "Enter a string to check: "
read str
len=`echo -n $str | wc -c`
len=`expr $len`
i=1
size=`expr $len / 2`
while [ $i -le $size ]; do
	j=`echo $str | cut -c $i`
	k=`echo $str | cut -c $len`
	if [ $j != $k ];then
		echo "String is not Palindrome"
		exit
	fi
	i=`expr $i + 1`
	len=`expr $len - 1`
done
echo "String is Palindrome"
