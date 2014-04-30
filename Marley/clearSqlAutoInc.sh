#!/bin/bash
#Logs into sql and runs chosen mysql script

mysqldump --user=root --password=avt tsv > /home/pi/avtinc/tsvDump.sql

echo Are you sure you want to clear the mysql database y/n?

read answer
s1='y'

if [ "$answer" == "$s1" ]

then

	echo Clearing Database

	mysql --user=root --password=avt tsv -e "delete from cardsettletransaction;
	delete from cardsettlerequest;
	delete from salestransactiondetail;
	delete from salestransaction;
	delete from cardtransaction;
	delete from synccomplete;
	delete from syncrequest;
	delete from productattribute;
	delete from product;
	delete from productcategory;
	delete from attribute;"
	
	
	alter table salestransaction auto_increment = 1;  
	alter table salestransactiondetail auto_increment = 1;  
	alter table cardtransaction auto_increment = 1;  
	alter table cardsettletransaction auto_increment = 1;  
	alter table cardsettlerequest auto_increment = 1;  
	alter table synccomplete auto_increment = 1;  
	alter table syncrequest auto_increment = 1;  
	
	update coil set productID=-1
	where coilNumber=99;


	
	exit
	
else
	
	exit
	
fi
