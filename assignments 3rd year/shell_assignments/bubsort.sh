#declare -a arr=( 92 34 52 67 24 )
echo -n "Enter the size of the array: "
read size
i=0
echo "Enter the elements of the array:"
while [ $i -lt $size ];do
	read arr[$i]
	i=`expr $i + 1`
done
i=0
echo ${arr[@]}
while [ $i -lt $size ];do
	n=`expr $size - $i`
	j=0
	while [ $j -lt $n ];do
		next=`echo "$j+1"|bc`
	       	if [ ${arr[$j]} -gt ${arr[$next]} ];then
			t=${arr[$next]}
	 		arr[$next]=${arr[$j]}
			arr[$j]=$t
		fi
		j=`expr $j + 1`
	done
	i=`expr $i + 1`
done
echo ${arr[@]}
