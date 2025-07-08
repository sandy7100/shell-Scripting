#/bin/bash
#
# print the name and the size of the file in the current directory
#

for i in  $(ls -S1); do
	echo $i:$(du -sh "$i" )
done
