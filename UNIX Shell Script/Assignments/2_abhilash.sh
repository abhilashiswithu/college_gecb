#!/system/bin/sh

echo -e"\nEnter the basic salry"
read bs
if [ bs -ge 1500 ]
then
    hra=500
    da=$(echo "scale=2; 98*$bs/100"| bc);
	else
        hra=$(echo "scale=2; 10*$bs/100"| bc);
        da=$(echo "scale=2; 90*$bs/100"| bc);
  fi
 echo "Basic Salary :"$bs
 echo "HRA :"$hra
 echo "Da :"$da