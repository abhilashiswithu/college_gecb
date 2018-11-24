echo 08-12-2013 | awk -F- 'BEGIN {
  split( "JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC", m )
}'
'{printf "%s%02s%02s\n", $2, m[$1], $3}'
   
