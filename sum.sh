#!/bin/bash


# to only match string that are exactly one or more digit .

#re='^[0-9]+$'

#if ! [[ $1 =~ $re && $2 =~ $re ]]; then
#	echo "oh no.. i need two numbers"
#	exit 2
#fi

function sum {
	echo $(( $1 + $2 ))
}

sum $1 $2


