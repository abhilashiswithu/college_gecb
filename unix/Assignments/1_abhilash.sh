#!/system/bin/sh
if	 [ -f $1 ]
then 
    if[ -f $2 ]
    then
        echo $(cat $1)>>$2
		else
         echo $(cat $1)>$2
     fi
fi