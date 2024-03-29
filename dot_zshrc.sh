#!/bin/zsh

export PROMPT='%(?.%F{blue}√.%F{red}?%?)%f %B%F{white}%1~%f%b $ '
#export PS1="%F{green}%n%F{default}:%F{yello}%1d%F{default}%# "

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
