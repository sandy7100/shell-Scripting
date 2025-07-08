#/bin/bash

if [ $(("$1" % 2)) -eq 0 ];
then
	echo "one factor"
elif [ $(("$1" % 3)) -eq 0 ];
then
	echo "one factor...actually two!"
else
	echo "$1"

fi

###################################################
echo "second way"

(( $1 % 2 )) || res="one factor"
(( $1 % 3 )) || res="one factor..actually two!"
echo ${res=$1}
