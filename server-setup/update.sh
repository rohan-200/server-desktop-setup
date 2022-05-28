Color_Off='\033[0m'       # Text Reset
# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
#bold colors
BBlack='\033[1;30m'       # Black
echo ${Green} Updating and Upgrading this System
sudo apt-get update && sudo apt-get upgrade -y
if [ $? -eq 0 ]; then
   echo UPDATE DONE
   sleep 2
else
   echo ${Red}FAIL
   sleep 2
fi
