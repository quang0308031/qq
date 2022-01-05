#!/bin/bash
if [ $1 -lt $2 ];
then
	a=$1
else
	a=$2
fi
for i in $(seq $a -1 1)
do
	if [ $(( $1 % $i )) == 0 -a $(( $2 % $i )) == 0 ]; then
        	break
    	fi
    i=$(( $i - 1 ))
done
echo $i
