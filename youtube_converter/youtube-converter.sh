#!/bin/bash
download()
{
url=$1
convert="youtube-dl -x $url"
	if [ -z $1 ] 
	then
		echo -e "\e[5m\e[91mTa pas mis d'URL frÃ¨re\e[25m\e[0m"
		exit 0
	else
		echo -e "\e[93m[?]Checking folder..."
		directory
		echo -e "\n\e[92m[+]Downloading and converting...\e[0m"
		$convert
		echo -e "\n\e[92m[!]Enjoy your music\e[0m"
		exit 1
	fi
}

directory()
{
	cd "$HOME"
	french_dir="$HOME/Musique/"
	english_dir="$HOME/Music/"

	if [[ ! -d $french_dir  &&  ! -d $english_dir ]] ;
	then
		echo -e "\e[91m[!] Music folder doesn't exist, creating one...\e[0m"
		mkdir "$HOME/Music/"
		echo -e "\e[92m[+] Music folder created\e[0m"
		echo -e "\e[91m[!] youtube-download folder doesn't exist, creating one...\e[0m"
		mkdir "$HOME/Music/youtube-download/"
		echo -e "\e[92m[+] youtube-folder created\e[0m"
		cd "$HOME/Music/youtube-download/"
	
	elif [[ ! -d "$HOME/Music/youtube-download/"   &&  -d "$HOME/Music/" ]] ;
	then
		echo -e "\e[92m[!] Music folder already exist\e[0m"
		echo -e "\e[92m[+] Creating youtube-download folder\e[0m"
 		mkdir "$HOME/Music/youtube-download/"
		echo -e "\e[92m[+] youtube-download folder created\e[0m"
		cd "$HOME/Music/youtube-download/"

	elif [[ -d "$HOME/Musique/youtube-download/"  && ! -d "$HOME/Music/" ]] ;
	then
		echo -e "\e[92m[!] Musique folder already exist!\e[0m"
		echo -e "\e[92m[+] Creating youtube-download folder\e[0m"
		mkdir "$HOME/Musique/youtube-download/"
		echo -e "\e[92m[+] youtube-download folder created\e[0m"
		cd "$HOME/Musique/youtube-download/"
	
	elif [[ -d "$HOME/Music/"  &&  -d "$HOME/Musique/" ]] ;
	then
		echo -e "\e[92m[+] Creating youtube-download folder into Music folder\e[0m"
		mkdir "$HOME/Music/youtube-download/"
		echo -e "\e[92m[+] youtube-download folder created\e[0m"
		cd "$HOME/Music/youtube-download"

	elif [ -d "$HOME/Music/youtube-download" ] ;
	then			
	       	cd "$HOME/Music/youtube-download"

	elif [ -d "$HOME/Musique/youtube-download" ] ;
	then
		cd "$HOME/Musique/youtube-download"

	fi


}
download $1
exit $?
