declare arr=( 65 37 140 35 92 687 3 25 88 408 )
echo ${arr[@]}
n=10
i=1
while [ $i -lt $n ];do
	val=${arr[$i]}
	j=`expr $i - 1`
	index=$i
	while [ $val -lt ${arr[$j]} -a $j -ge 0 ];do
		arr[$j+1]=${arr[$j]}
		index=$j
		j=`expr $j - 1`
	done
	arr[$index]=$val
	i=`expr $i + 1`
done
echo ${arr[@]}
