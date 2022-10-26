#!/bin/zsh

for folder in ~/configuration/common ~/configuration/macos
do
    if test -d $folder
    then
	for file in $folder/*.sh
	do
	    echo $file
	    source "$file"
	done
    fi
done
