read 1="fred"
if [ "$1" ]
then
  echo "Found an argument to this script"
  if [ $1 = "fred" ]
  then
    echo "The argument was fred!"
  else
    echo "The argument was not fred!"
  fi
else
  echo "This script needs one argument"
fi


