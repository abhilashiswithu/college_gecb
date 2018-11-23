echo -e "\nEnter the basic salary"
read bs
if [ $bs -ge 1500 ] 
 then 
	hra=$(($bs*10/100))
	da=$(($bs*98/100))
else
	hra=500
	da=$(($bs*98/100))
fi
echo -e "\nBasicc Salary : "$bs
echo -e "\nHRA : "$hra
echo -e "\nDA : "$da
