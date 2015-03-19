#!/bin/bash

regf="(^:|^urgency|^normal|^low|^icon_data)";
interface="org.freedesktop.Notifications";
member="Notify";

dbus-monitor --monitor "interface='$interface',member='$member'" |
while read -r line; do
 	temp="$(echo "$line" |
		tr -d '"' |
		egrep -o "^string.+" |
		sed 's/\(^string\s\)\(.*\)/\2/')";

	if [ -n "$temp" ] && ! egrep -q "$regf" <<< "$temp"
	then
		if egrep -q "1" <<< "$1/online"
		then
			echo "$temp" > "$1/text_in";
		fi
	fi
done
