declare -a arr=( 92 34 52 67 24 )
size=4
i=0
echo ${arr[@]}
while [ $i -lt $size ];do
	n=`expr $size - $i`
	j=0
	#echo ${arr[@]}
	while [ $j -lt $n ];do
		next=`echo "$j+1"|bc`
	       	if [ ${arr[$j]} -gt ${arr[$next]} ];then
			t=${arr[$next]}
	 		arr[$next]=${arr[$j]}
			arr[$j]=$t
		fi
		j=`expr $j + 1`
		#echo ${arr[@]}
	done
	#echo end
	#echo ${arr[@]}
	i=`expr $i + 1`
	#echo ${arr[@]}
done
echo ${arr[@]}
