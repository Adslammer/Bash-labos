#!/bin/bash

if [ "$#" -ne 2 ]
then
    echo "Potrebna 2 parametra - kazalo i uzorak imena datoteka"
fi

kazalo=$1
uzorak=$2 

echo "kazalo je $kazalo, uzorak imena datoteka je $uzorak"

bred=0
for dat in $( ls -R $kazalo )
do
    if [  $( echo $dat | cut -f2 -d. ) != $( echo $uzorak | cut -f2 -d. ) ]
    then
        continue
    fi

    echo "Datoteka $dat"

    bred=$(( $( wc -w $dat | cut -f1 -d' ' )+$bred ))
done

echo "Ukupan broj redaka je $bred"