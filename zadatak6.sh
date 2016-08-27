#!/bin/bash

backup=$( eval "echo \$$#" )

if [ ! -d $backup ]
then
    echo "Direktorij $backup ne postoji i stvorit æe se"
    mkdir $backup
fi

bkopi=0
for i in $( seq 1 $(($#-1)) )
do
    dat=$( eval "echo \$$i" )
    
	if [ -f $dat -a -r $dat ]
    then
        cp $dat "$backup/$dat"
        bkopi=$(( $bkopi+1 ))
        else
        echo "$dat ne postoji ili nije citljiva"
    fi
done

echo "Broj uspjesno kopiranih datoteka je $bkopi"