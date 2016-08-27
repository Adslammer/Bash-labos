#!/bin/bash

grep -E -i "banana|jabuka|jagoda|lubenica|dinja" namirnice.txt

grep -E -i -v "banana|jabuka|jagoda|lubenica|dinja" namirnice.txt >ne-voce.txt

grep -E -r "[[:upper:]]{3}[[:digit:]]{6}" ~/projekti/
echo ""

find -mtime -14 -mtime +7 -ls -type f
echo ""

for broj in $(seq 1 1 15); do echo $broj; done