#!/bin/bash

curDate=`date +%Y-%m-%d`
newDate=`date +%Y%m%d`

psql -d test -t -A -F"," -c "select * from weather where name='${curDate}'" > salesReports/salesReport_$newDate.csv 
