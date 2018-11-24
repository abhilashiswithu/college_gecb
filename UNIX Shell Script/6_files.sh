for i in $*
do 
	if [ -d $i]
	then
		echo $i
	else
		echo $(wc -l $i)
	fi
done

