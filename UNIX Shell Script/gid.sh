grp=$(awk -F: '$1 ~ /^root$/ {print $3; }' </etc/group)
awk -F: '$4 ~ /^'$grp'$/ { print $1,  $4;}' </etc/passwd



 awk -F: '($3 = 1000) {printf "%s:%s\n",$1,$4}' /etc/passwd
