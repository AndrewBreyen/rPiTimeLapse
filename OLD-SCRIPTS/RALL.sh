clear
echo **WARNING!!** This will delete ALL FILES AND FOLDERS ON THE TIME-LAPSE USB DRIVE, MOUNTED ON A rPI
echo
echo Press any key to continue, or press CRTL+C to abort.
read -n 1



clear
echo **WARNING** This will delete ALL FILES AND FOLDERS on the Time Lapse USB Drive. 
echo
echo Just to confirm, you want to delete all files and folders on the Time Lapse USB, correct?
echo
echo This operation will take place immediately after the answer is submitted.
echo

read -r -p "Are you sure? [y/n] " response
case $response in
	[yY]) 
        	echo Removing all files and folders from the time-lapse folder...
		rm -r -f /media/$USER/TLPS/*
		echo
		echo Operation successful. All files and folders have been removed from te time-lapse directory.
		echo
		echo
		echo Press any key to exit...
		read -n 1
        	;;
	*)        
		echo		
		echo Operation canceled.
		echo You can re-run the script if you did not mean to cancel the operation.
		echo
		echo
		echo Press any key to exit...
		read -n 1
		;;
esac

