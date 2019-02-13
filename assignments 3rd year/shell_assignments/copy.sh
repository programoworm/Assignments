if [ -e $1 -a -r $1 ];then
	cat $1 > $2
	echo "Successfully copied $1 to $2"
fi
