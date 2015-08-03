#!/bin/sh

temperature=`/usr/local/bin/temper | awk -F, '{print $2}'`
curl -F number=$temperature http://masutaka.net:5125/api/feedforce/thermometer/temperature
