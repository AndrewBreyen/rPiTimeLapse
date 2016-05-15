API="API-KEY"

fswebcam -d /dev/video0 -r 1280x720 /media/pi/TLPS/%Y-%m-%d_%H-%M_SHOT1.jpg
fswebcam -d /dev/video0 -r 1280x720 /media/pi/TLPS/%Y-%m-%d_%H-%M_SHOT2.jpg
fswebcam -d /dev/video0 -r 1280x720 /media/pi/TLPS/%Y-%m-%d_%H-%M_SHOT3.jpg

curl -u $API: https://api.pushbullet.com/v2/pushes -d type=note -d title="rPi Time Lapse" -d body="Script complete. Check the shell for possible errors."
