#!/bin/bash

if [ ! -f /app/web-app/WEB-INF/applicationContext.xml ]; then
   echo "Forcing grails upgrade"
   grails upgrade --force
fi

 grails -Dgrails.scan.interval=10000 run-app