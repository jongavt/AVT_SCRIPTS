#!/bin/bash
echo Please enter serial number
read serial
mysql --user=root --password=avt tsv -e "update machinesettings set _value='MarleyCoffee_${serial}' where _key='MachineSerialNumber';"
echo Serial has been changed

