#!/bin/sh
###########################################
#
# Mic Mute Toggle by Nicolo', mod of Apo's
#
###########################################

#Save 7th element (on/off) from proper line of "amixer get" result to status variable
status=`amixer -c 1 set Capture toggle |grep "Front Left:" |   awk '{ print ($7) }'`

#Print gnome notification with current mic state (on/off)
#change ~/Scripts/imic.png to path of prefered image to accompany the message if desired
notify-send "Mic Status" "$status" -u normal -i ~/Scripts/Images/onair.png -t 1000 -h int:transient:1;

#-t=time in ms for notification to stay up (not sure if working properly)
#--hint=int:transient:1; so that notification doesn't stay on gnome 3 bottom panel.
