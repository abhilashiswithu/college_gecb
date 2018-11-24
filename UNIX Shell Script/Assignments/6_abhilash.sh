#!/system/bin/sh

for i in $*
do
    if [ -d $i ]
    then
        echo "Directory ". $i
    else
        echo "File " $(wc -l $i)
    fi
done