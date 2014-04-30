!#/bin/bash

echo Logging Into Hamachi
sudo hamachi login

echo Attaching avtremote@gmail.com
sudo hamachi attach avtremote@gmail

echo Enter PC serial
read serial 
sudo hamachi set-nick "MarleyCoffeePi_${serial}"

sudo hamachi do-join 230-585-156