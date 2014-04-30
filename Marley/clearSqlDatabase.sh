#!/bin/bash
#Logs into sql and runs chosen mysql script

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
	delete from inventory;
	delete from productattribute;
	delete from product;
	delete from productcategory;
	delete from attribute;"
	
	exit
	
else
	
	exit
	
fi
