#!/bin/bash
#Logs into sql and runs chosen mysql script

echo Are you sure you want to insert to the mysql database y/n?

read answer
s1='y'

if [ "$answer" == "$s1" ];

then

	echo Inserting into Database

	mysql --user=root --password=avt tsv -e "insert into inventory (machineid,coilnumber) values(0,1);
	insert into inventory (machineid,coilnumber) values(0,2);
	insert into inventory (machineid,coilnumber) values(0,3);
	insert into inventory (machineid,coilnumber) values(0,4);
	insert into inventory (machineid,coilnumber) values(0,5);
	insert into inventory (machineid,coilnumber) values(0,6);
	insert into inventory (machineid,coilnumber) values(0,7);
	insert into inventory (machineid,coilnumber) values(0,8);
	insert into inventory (machineid,coilnumber) values(0,9);
	insert into inventory (machineid,coilnumber) values(0,10);
	insert into inventory (machineid,coilnumber) values(0,11);
	insert into inventory (machineid,coilnumber) values(0,12);
	insert into inventory (machineid,coilnumber) values(0,13);
	insert into inventory (machineid,coilnumber) values(0,14);
	insert into inventory (machineid,coilnumber) values(0,15);"

	exit

else

	exit

fi
