echo WARNING!!! THIS WILL DELETE EVERYTHING ON THE TIME-LAPSE USB!!!
echo WARNING!!! THIS IS IMMEDIATE AND CANNOT BE REVERSED!!!
echo
read -r -p "PRESS Q TO DELETE EVERYTHING ON THE TIME-LAPSE USB DRIVE... " key
case $key in
	[qQ])
		rm -r -f /media/$USER/TLPS/*
		echo ALL REMOVED
		sleep 3
		;;
	*)
		echo No files deleted.
		sleep 3
		exit
		;;
esac
echo DONE
