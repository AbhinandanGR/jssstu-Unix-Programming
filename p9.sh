#!/bin/bash

if echo $1 | egrep -q '^[0-9]+$'
then 
	echo "Valid Designation code"
else
	echo "Invalid code, code must be numerical"
	exit
fi

if echo $2 | egrep -q '^[a-zA-Z]+$'
then
	echo "Valid Designation description"
else
	echo "Invalide description, description must be alphabetical"
	exit
fi

echo $1 $2 >> design.txt
echo "Data added successfully "

cat design.txt


