#!/bin/bash


put_text_before() {
	text=$1
	before=$2
	name=$3
	line=$4
	color=${5-#268bd2}

	beforeblock="{\"name\":\"$before\""

	extra="{\"full_text\":\"$text\",\"name\":\"$name\",\"color\":\"$color\"}"
	echo ${line/$beforeblock/$extra,$beforeblock}
}

i3status | while :
do
    read line
		brightness="`/home/desmond/des-config/perc.sh`"
		text="🔆: ${brightness/./}%"

		if [[ $line =~ \[.*\]$ ]] ; then
			line=$(put_text_before "$text" "volume" "brightness" "$line")
			#line=$(put_text_before "hello desmond" "disk_info" "greeting" "$line" "#eee8d5")
			echo $line
		else
			echo $line 
		fi

done
