BEGIN {
	RS="\n\n"; #! INPUT RECORD SEPARATER
	FS="\n";  #! INPUT FIELD SEPARATER
	OFS="=";  #! OUTPUT FIELD SEPARATER
	ORS = "\n"; #! OUTPUT RECORD SEPARATER
}
#!{print FILENAME, FNR;} #!  Number of Records relative to the current input file
{
if(NR==1){
	print "\nRecord #",NR; #! Number of Records Variable
	print $1;
	print NF; #! Number of Fields in a record
	print "\n";
}
}
#{ OFMT = "%d" # print numbers as integers
#print 17.23 }
