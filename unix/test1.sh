#fullfilename="asasda sas.cpp"
#filename=$(basename "$fullfilename")
#fname="${filename%.*}"
#ext="${filename##*.}"

#@echo "Input File: $fullfilename"
#echo "Filename without Path: $filename"
#echo "Filename without Extension: $fname"
#echo "File Extension without Name: $ext"

for f in *.cpp;  do echo ${f}; done;
