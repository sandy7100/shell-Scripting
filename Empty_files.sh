#/bin/bash
#


for x in *
do 
	if [ -s $x ]; then  # -s is the file test operator the returns trur if file exists and not non-empty
		continue
	else
		rm -rf $x
	fi
done


