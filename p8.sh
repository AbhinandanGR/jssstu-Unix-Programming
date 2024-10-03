#!/bin/bash

y=1

while [ $y -eq 1 ]
do
	echo "Enter the item code"
	read itemCode

	echo "Enter the item"
	read item

	echo $itemCode $item >> item.txt

	echo "Enter 1 to continue ot 0 to discontinue"
	read y
done

cat item.txt


