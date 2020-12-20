#!/bin/sh
SHELL=/bin/sh PATH=/bin:/sbin:/usr/bin:/usr/sbin 

Year=`date +%Y`
Month=`date +%m`
Day=`date +%d`
Hour=`date +%H`
Minute=`date +%M`
Second=`date +%S`


cd /var/www/html/wiki.chifek.ru/ && git add . \
&& git commit -m "Auto commit in $Day-$Month-$Year -- $Hour-$Minute-$Second" \
&& git push origin master \
