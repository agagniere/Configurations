#!/bin/bash

export PS1='\[\e[32m\]\u\[\e[0m\]:\[\e[33m\]\W\[\e[32m\]$\[\e[0m\] '

if test -e /etc/bash_completion
then
	echo "Bash completion"
	source /etc/bash_completion
fi

for folder in ~/configuration/common ~/configuration/linux
do
	if test -d "$folder"
	then
		for file in $(find "$folder" -name '*.sh')
		do
			echo $file
			source $file
		done
	fi
done
