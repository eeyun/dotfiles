

#!/bin/bash
time=`acpi -b | awk '{print $5}' | cut -d : -f 1,2`
ac=`acpi -a | awk '{print $3}' | tr -d ,`
status=`acpi -b | awk '{print $3}' | tr -d ,` 
percent=`acpi -b | acpi -b | awk '{print $4}' | cut -d % -f 1`


if [ $ac == "on-line" ]
then
	name="$percent%  ";
else
	if [ $percent -lt 20 ]
	then 
		name="$percent%  ";
	elif [ $percent -lt 40 ]
	then 
		name="$percent%  ";
	elif [ $percent -lt 60 ]
	then
		name="$percent%  ";
	elif [ $percent -lt 80 ]
	then
		name="$percent%  ";
	else
		name="$percent%  "
        fi 
fi

case $BLOCK_BUTTON in
    1) echo "$time  " ;;
    *) echo "$name" ;;
esac


