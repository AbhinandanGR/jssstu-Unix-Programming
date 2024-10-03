#!/bin/bash

echo "Enter the user login account name "
read l

cd $HOME

ls > list1.txt

grep "$l" list1.txt

if [ $? -eq 0 ]
then
	echo "User exits"
else
	echo "User does not exits"
fi

