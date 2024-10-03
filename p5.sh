#!/bin/sh

echo "Enter the filename"
read filename

if [ ! -f $filename ]
then
	echo "File does not exist"
	exit
fi

echo "Enter the pattern to search"
read pattern

grep "$pattern" $filename

if [ $? -eq 0 ]
then
	echo "Command executed successfully"
else
	echo "Command failed to execute"
fi


