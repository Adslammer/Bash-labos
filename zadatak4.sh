#!/bin/bash

if [ "$#" -ne 2 ]
then
	echo "nije dobar broj parametara"
	exit
fi

if [ ! -d "$1" ]
then
	echo "pocetni direktorij ne postoji"
	exit
fi

if [ ! -d "$2" ]
then
	mkdir ./$2
fi

for dat in `ls ./$1`
do
	ime_foldera=`stat ./$1/$dat | grep Modify: | cut -d " " -f2 | cut -d "-" -f1,2`
	
	destdir=./$2"/"$ime_foldera
	if [ ! -d "$destdir" ]
	then
		mkdir $destdir
	fi
	
	mv ./$1/$dat $destdir
done