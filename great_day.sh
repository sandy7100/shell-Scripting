#/bin/bash
#
#this will print " today is great day !" unless its given a day name "
#

#echo "today is ${1:-a great day!}"

if [ "$1" = "" ]; 
then
	echo "today is a great day"
else
	echo "today is $1"
fi

##################################################################


if [ -z "$1" ]; then #using -z to check if length is empty
	echo "today is a great day"
else
        echo "today is $1"
fi


