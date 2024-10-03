#!/bin/bash

for file in *
do
	if [ -f "$file" ]
	then
		permission=$(stat -c '%A' "$file")
		link_exit="No"
		link_count=$(stat -c '%h' "$file")

		if [ $link_count -gt 0 ]
		then
			link_exit="Yes"
		fi

		size=$(stat -c '%s' "$file")

		echo -e "File name : $file\nPermission : $permission\nSize : $size bytes\nLink Existence : $link_exit, $link_count\n"
	fi
done


