# Raspberry Pi Time Lapse Scripts

Hi! This repo houses my scripts that I use for having a Raspberry Pi take a picture with a USB webcam, on a set interval.

You are free to use these scripts, as long as the licence terms are followed.

## Requirements
##### Minimum requirements
* A Raspberry Pi
* A Raspberry Pi compatable webcam
* fswebcam installed on the rPi
* a USB flash-drive, _**named TLPS**_

##### If you want to get notifications:
* A Pushbullet Account with compatable device
* Internet connection for pi
* Your Pushbullet API Key
  
  (Replace it in line 3 of the script you want to use)

## How to use
1. Copy all shell scripts to the Pi's SD card
2. Plug in a USB flashdrive, directly to the Pi, _**named TLPS**_ (it is case sensitive)
2. With fswebcam installed, USB webcam attatcheand connected to internet, run the *userloop+notifycountdown* shell script file.

*Make sure to execute the shell script **in the terminal**!!*

*You cannot just "execute" the file. It **MUST be run in a terminal**.*
3. You will be asked to specify the number of seconds that you want between images.
4. Let the pi go!

To stop the script, you can: 
  
  Kill the process via PID, close the command prompt window, shutdown the pi, etc.

### Days to Seconds:
**YOU MAY ONLY USE WHOLE NUMBER INTEGERS!! NO commas, letters, etc!**

|Days        |Seconds  |
|------------|---------|
|1           |86400    |
|7 (1 week)  |604800  |
|14 (2 weeks)|1209600|
|>14 days, or other values|[Google It!](https://www.google.com)|
[Raspberry Pi Scripts](https://github.com/AndrewBreyen/rPiTimeLapse) by [Andrew Breyen](http://andrewbreyen.github.io) is licensed under a [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License](http://creativecommons.org/licenses/by-nc-nd/4.0/).

![CC BY-NC-ND][cclicence]

[cclicence]: https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png "CC BY-NC-ND"
