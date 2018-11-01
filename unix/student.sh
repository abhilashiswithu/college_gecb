echo -e "\nEnter the number of students"
read li
for (( i=1; i<=$li; i++ ))
do
echo ----------------------------------- 
echo -e '\tStudent #'$i 
echo ----------------------------------- 
echo Enter the Student name 
read name 
echo Enter the Register number 
read rno
	for (( j=1; j<=5; j++ ))
	do
		echo "Enter the Mark"$j 
		read m[j]
	done
tot=$(expr ${m[1]} + ${m[2]} + ${m[3]} + ${m[4]} + ${m[5]}) 
avg=$(expr $tot / 5) 
if [ ${m[1]} -ge 35 ] && [ ${m[2]} -ge 35 ] && [ ${m[3]} -ge 35 ] && [ ${m[4]} -ge 35 ] && [ ${m[5]} -ge 35 ] 
then 
	res='PASS'
  
 if [ $avg -ge 90 ] 
 then 
	grade='S'
 elif [ $avg -ge 80 ] 
 then 
	grade='A'
 elif [ $avg -ge 70 ] 
 then 
	grade='B'
 elif [ $avg -ge 60 ] 
 then 
	grade='C'
 elif [ $avg -ge 50 ] 
 then 
	grade='D'
 elif [ $avg -ge 35 ] 
 then 
	grade='E'
 fi 
else 
	res='FAIL'
fi 

final="\n-----------------------------------\n     Student Mark List\n----------------------------------- \n\nStudent Name    : $name\nRegister Number : $rno\nMark1           : ${m[1]}\nMark2           : ${m[2]}\nMark3           : ${m[3]}\nMark4           : ${m[4]}\nMark5           : ${m[5]}\nTotal           : $tot\nAverage         : $avg\nGrade           : $grade\nResult          : $res\n\n ----------------------------------- "

reg="$rno.txt"
echo -e $final >$reg

echo -e "\n"
done

echo -e "\n********SUCCESSFULL**********"

