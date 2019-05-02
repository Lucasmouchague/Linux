#!/bin/bash
download()
{
url=$1
	if [ -z $1 ] 
	then
		echo "Ta pas mis d'URL frÃ¨re"
		exit 0
	else
		directory
		cd "$HOME/Musique/download-youtube/"
		youtube-dl -x $url
	fi
}

directory()
{
	dir="$HOME/Musique/download-youtube/"
	if [ ! -d $dir ]
	then
		mkdir "$HOME/Musique/download-youtube/"
		echo "[+] Folder doesn't exist, creating one..."
	
	else
		echo "[!] Folder already exist!"
 
	fi


}
download $1
exit $?