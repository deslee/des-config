#!/bin/bash
i3status | while :
do
    read line

		text="hi"
		extra="{\"full_text\":\"$text\"}"

		if [[ $line =~ \[.*\]$ ]] ; then
			echo ${line/[/[$extra,}
		else
			echo $line 
		fi

done
