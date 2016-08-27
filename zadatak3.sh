#!/bin/bash

for dat in localhost_access_log.????-02-??.txt
do
	datum=`echo $dat | cut -d "." -f2`
	dd=`echo $datum | cut -d "-" -f3`
	mm=`echo $datum | cut -d "-" -f2`
	gggg=`echo $datum | cut -d "-" -f1`

	echo "datum: "$dd"-"$mm"-"$gggg
	echo "------------------------"
	
	cat $dat | cut -d '"' -f2 | sort | uniq -c | sort -nr | tr -s "[\ ]" " " | sed 's/\([^ ]*\) \([^ ]*\) /\1\2 : /'
	echo "------------------------"
    echo ""	
done