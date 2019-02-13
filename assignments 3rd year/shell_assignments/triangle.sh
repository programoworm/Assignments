mod()
{
	if (( $(echo "$1<0"|bc) ));then
		#echo "This is negative"
		echo "($1*-1)+0.00"|bc
	else
		echo "$1+0.00"|bc
	fi
}
#clear
echo "Enter the coordinates "
echo ------------------------
echo First coordinate
read x1
read y1
echo Second coordinate
read x2
read y2
echo Third coordinate
read x3
read y3
area=`echo "0.5*($x1*($y2-$y3)+$x2*($y3-$y1)+$x3*($y1-$y2))"|bc`
#try=`echo 21*-1|bc`
area=$(mod $area)
#area=`echo "$(mod $area)+0.00"|bc`
#echo "$area+0.00"|bc
if (( $(echo "$area>0"|bc) ));then
	echo Triangle can be formed with the coordinates
else
	echo Triangle can not be formed with the cordinates
fi
