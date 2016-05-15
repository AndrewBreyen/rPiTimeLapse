####################################		|For time to take image:			|
# DECLARE AND INITIALIZE VARIABLES #		|5PM is 1700, Noon is 1200, 5:30 is 1730	|
####################################		|(see more at bit.ly/1ZRpigF)			|

API="YOUR-APIKEY-HERE"	#	<-- Put your pushbullet API key here!
TTTP="1532"					#	<-- Change this to change time to take pictures
nopic="45"					#	<-- Change this to change the delay between not taking pictures
pic="120"					#	<-- Change this to change the delay between taking pictures
loops="1"					#	<-- Don't change this! (It's the loop counter)

#############
# MAIN LOOP #
#############

while true
do
	TIME=$(date "+%H%M")
	clear
	echo "$(tput bold)Number of loops: $loops"
	echo
	echo "$(tput setaf 1)$(tput bold)The current value of \"\$TIME\" is $TIME"
	echo "$(tput bold)The pictures are set to take at $TTTP"
	echo
	
	if [  $TIME -eq $TTTP  ]; then
		echo "$(tput setaf 5)Take picture!"
		fswebcam -d /dev/video0 -r 1280x720 --no-banner /media/pi/TLPS/%Y-%m-%d_%H-%M_SHOT1.jpg
		fswebcam -d /dev/video0 -r 1280x720 --no-banner /media/pi/TLPS/%Y-%m-%d_%H-%M_SHOT2.jpg
		fswebcam -d /dev/video0 -r 1280x720 --no-banner /media/pi/TLPS/%Y-%m-%d_%H-%M_SHOT3.jpg
		echo
		echo "$(tput setaf 1)$(tput bold)Images have been taken!$(tput sgr 0)"
		echo
		curl -u $API: https://api.pushbullet.com/v2/pushes -d type=note -d title="rPi Time Lapse: IMAGE TAKEN"
		echo
		echo
		echo "$(tput setaf 1)$(tput bold)Push notification sent!$(tput sgr 0)"
		echo
		echo 
		echo "$(tput setaf 3)$(tput bold)Waiting $pic seconds to check time...$(tput sgr 0)"
		sleep $pic
	else
		echo "$(tput bold)\$TIME != \$TTTP"
		echo "($TIME != $TTTP)"
		echo
		echo "$(tput setaf 3)Waiting $nopic seconds to check time...$(tput sgr 0)"	
		echo "$(tput bold)Picture will be taken at $TTTP"
		sleep $nopic
	fi
	loops=$((loops+1))
	
done
