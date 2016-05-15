#!/bin/bash

###
###Define Variables, initialize some
###
API="API-KEY"
RUNNO="1"
seconds="86400"

curl -u $API: https://api.pushbullet.com/v2/pushes -d type=note -d title="rPi Time Lapse: STARTED" -d body="Time Lapse Capture has started successfully! You should get an image notification soon."

##MAIN SECTION LOOP
##This runs infinitely!
cron 0 17 * * * ~/Desktop/take-image.sh
