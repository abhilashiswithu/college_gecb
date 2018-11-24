#!/system/bin/sh

for i in $*
do
    sed '/a/d' $i>tmp
    mv tmp $i
done