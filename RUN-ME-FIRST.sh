#BIN-BASH

pause(){
 read -n1 -rsp $'Press any key to continue or Ctrl+C to exit...\n'
}

sudo apt-get update
sudo apt-get install fswebcam
sudo apt-get update

clear
echo Initial Installs complete. You can scroll up to see results.
read -n 1 -p "Press any key to continue..."
