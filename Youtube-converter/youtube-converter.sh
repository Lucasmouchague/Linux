#!/bin/bash
url=$1
if [ -z $1 ] 
then
	echo "Ta pas mis d'URL frÃ¨re"
	exit 0
else
	youtube-dl -x $url
fi