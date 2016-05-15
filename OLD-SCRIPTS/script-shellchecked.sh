#!/bin/bash

API="API-KEY"
RUNNO="1"
seconds="86400"

echo "The easiest way to get this is with http://bit.ly/htmlcountdown."
echo "Enter the time/day you want to start, then select seconds only."
echo 
read -p -r "Delay to start? " sec2del
clear
echo "Begining $seconds second[s] capture with a delay of $sec2del second[s]..."
echo
echo "Capture will begin after specified delay, of $sec2del seconds. A notification will be sent to notify that it has started."
echo

	#START DELAY COUNT
	delayct=$sec2del
	until [  $delayct -lt 1  ]; do
			echo -ne "Waiting $delayct of $sec2del second[s] to begin...\r"
			sleep 1
			let delayct-=1
	done

curl -u $API: https://api.pushbullet.com/v2/pushes -d type=note -d title="rPi Time Lapse: STARTED" -d body="Time Lapse Capture has started successfully! You should get an image notification soon."

while true
do
	clear
	echo -ne "$(tput setaf 2)Running... $(tput sgr 0)\n"	
	echo "$(tput setaf 6)Run Number: $RUNNO $(tput sgr 0)"
	echo
	#fswebcam -d /dev/video0 -r 1280x720 /media/pi/TLPS/%Y-%m-%d_%H-%M_SHOT1.jpg|$OUTPUT
	#fswebcam -d /dev/video0 -r 1280x720 /media/pi/TLPS/%Y-%m-%d_%H-%M_SHOT2.jpg|$OUTPUT
	#fswebcam -d /dev/video0 -r 1280x720 /media/pi/TLPS/%Y-%m-%d_%H-%M_SHOT3.jpg|$OUTPUT
	curl -u $API: https://api.pushbullet.com/v2/pushes -d type=note -d title="rPi Time Lapse" -d body="Time Lapse rPi Loop complete with a Run Number of: $RUNNO"
	echo "$(tput setaf 1)$(tput setab 7)$seconds second[s] push notification sent successfully!$(tput sgr 0)"

		#COUNT DOWN		
		counter=$seconds
		until [  $counter -lt 1  ]; do
			echo -ne "Waiting" $counter "of" $seconds "second[s] to loop... \r"
			sleep 1
			let counter-=1
		done
		let RUNNO+=1
done
