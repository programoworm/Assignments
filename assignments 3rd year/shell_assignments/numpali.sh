echo "Enter the number to check: "
read n
i=0
while [ $n -ne 0 ];do
	arr[$i]=`echo $n%10|bc`
	n=`expr $n / 10`
	i=`expr $i + 1`
	#n=`expr n - 2`
	#echo $i
done
#echo $i
n=`expr $i - 1`
s=`expr $i / 2`
#echo "n=$n"
#echo ${arr[@]}
i=0
#echo ${arr[2]}
while [ $i -lt $s ];do
	last=`echo "$n - $i"|bc`
	#echo "last = $last"
	#echo "last element: ${arr[$last]}"
	#echo "first element:${arr[$i]}"
	if [[ ${arr[$i]} -ne ${arr[$last]} ]];then
		echo "Number is not palindrome"
		exit
	fi
	i=`expr $i + 1`
done
echo "Number is palindrome"
