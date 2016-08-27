#!/bin/bash

proba="Ovo je proba"
echo -e $proba"\n"

lista_datoteka=`ls *.*`
echo -e $lista_datoteka"\n"

for i in {1..3}
do
	proba3="${proba3}${proba}. "
done
echo -e $proba3"\n"

a=4 b=3 c=7
d=$((($a+4)*$b%$c))
echo -e $d"\n"

broj_rijeci=`wc -w *.txt | awk {'print $1'} | tail -1`
echo -e $broj_rijeci"\n"

ls -R ~
echo ""

cut -d ":" -f 1,6,7 /etc/passwd
echo ""

ps -ef | sed 's/  */ /g' | cut -d " " -f 2,3,7