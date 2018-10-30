#!/system/bin/sh

for i in $(cat $1)
do
	echo $i $(cat $2 | grep $i | wc -l
done