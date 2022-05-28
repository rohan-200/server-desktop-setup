sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-12.0.2/bin/java 1
if [ $? -eq 0 ]; then
   sudo update-alternatives --config java <<< 2
   sleep 2
else
   echo ${Red}FAIL
   sleep 2
fi