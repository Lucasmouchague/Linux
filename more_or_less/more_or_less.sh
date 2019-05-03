#!/bin/bash
secretnumber=$(( RANDOM%1000 ))
attempt=0
mynumber=0

clear
echo -e "\nBienvenue mesdames et messieurs pour notre super jeux... Le plus ou moins.\nLe jeux consiste a trouver un chiffre alÃ©atoire entre 0 et 1000\nSi vous gagnez bah bravo c'est cool.\n\n"

read -p "Appuyez sur entree pour continuer..."

while [[ $mynumber != $secretnumber ]] ; do
        echo -n "Alors tu trouve ? : ";
        read mynumber
        if [ -z $mynumber ] ;
        then
                echo "Tu sais je suis pas dupe mon petit ta rien mis."
        elif ! [[ "$mynumber" =~ ^[0-9]+$ ]] ;
        then
                echo "M'embrouille meme pas c'est pas des chiffres!"
        elif [ $mynumber -lt $secretnumber ] ;
        then
                echo "Wesh c'est plus grand frere!"
        elif [ $mynumber -gt $secretnumber ] ;
        then
                echo "Mais non c'est plus bas!"
        fi
        attempt=$((attempt + 1))
done
echo -e "\n\nEt ouai ta devine le nombre mystere en $attempt tentative"

exit 1
