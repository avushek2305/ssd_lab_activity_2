#!/bin/bash

read var
c=`wc --lines < $var`

if(( $(($c % 2 )) == 1 ))
then
d=$(( $c / 2 + 1))
else
d=$(( $c / 2 ))
fi

head -$d $var | tail -1 


