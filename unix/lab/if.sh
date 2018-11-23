l="fred"
if [ "$l" ]
then
  echo "Found an argument to this script"
  if [ $l = "fred" ]
  then
    echo "The argument was fred!"
  else
    echo "The argument was not fred!"
  fi
else
  echo "This script needs one argument"
fi


