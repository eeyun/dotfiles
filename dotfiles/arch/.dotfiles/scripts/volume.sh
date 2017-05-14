CEILING="${BLOCK_INSTANCE%/*}"
CEILING="${CEILING:-100}"


if ponymix is-muted; then
	OUTPUT="    "
	
	echo " $OUTPUT"
else
	STATE="$(ponymix get-volume)"
	DEVICE='alsa_output.pci-0000_00_14.2.analog-stereo'
	ACTIVE_SINK=$(pacmd list-sinks | grep -v '<hdmi-output-0>' | grep 'active port' | awk '{ print $3 }')

	if [ "$ACTIVE_SINK" = "<analog-output-speaker>" ]; 	then
		if [ $STATE -lt 50 ]
		then
			OUTPUT="  "
		else
			OUTPUT="  "
		fi
else
	OUTPUT=" "
fi
fi


case $BLOCK_BUTTON in 
	*) echo "$OUTPUT" ;;
	1) echo "$STATE% $OUTPUT" ;;
esac
