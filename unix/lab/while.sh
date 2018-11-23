
month=1
while [ $month -le 12 ]
do
# Print out the month number
  echo "Month no. $month"
# Add one to the month number
  month=`expr $month + 1`
done


a=0
while [ "$a" -lt 10 ]    # this is loop1
do
   b="$a"
   while [ "$b" -ge 0 ]  # this is loop2
   do
      echo -n "$b "
      b=`expr $b - 1`
   done
   echo
   a=`expr $a + 1`
done



