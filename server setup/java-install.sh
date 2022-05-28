Color_Off='\033[0m'       # Text Reset
# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
#bold colors
BBlack='\033[1;30m'       # Black
echo ${Yellow}'Installing megatools to download jdk 12 sotred in cloud storage'
sudo apt install megatools -y
echo
echo
echo ${Yellow}'downloading jdk 12'
megadl "https://mega.nz/file/w8YFnIQT#idXOCnb_yHN7CY9-qqOGlTkt_5Fp4WZLUiomLXoCdwY"
if [ $? -eq 0 ];then
    echo ${Green}Download successfull
    sudo dpkg -i jdk-12.0.2_linux-x64_bin.deb
    if [ $? -eq 0 ];then
        echo ${Green}jdk 12 successfully installed 
        sleep 2
    else
        echo ${Red}Failed to install
    fi
else
    echo ${Red}Download Failed
    sleep 2
fi


