#!/bin/sh

while read line
do
	echo $line > tempo
	v=$(cut -d ' ' -f 5 tempo)
	emp=$(cut -d ' ' -f 1 tempo)
	echo $v

	if [ $v -gt 60000 ]
	then
		da=$((v*25/100))
	else
		da=$((v*30/100))
	fi

	hra=$((v*10/100))
	gs=$((v+da+hra))

	echo "$line"
	echo "Employee : $emp"
	echo "Basic Salary : $v"
	echo "DA : $da"
	echo "HRA : $hra"
	echo "Gross Salary : $gs"
	echo ""

done < empn.lst


