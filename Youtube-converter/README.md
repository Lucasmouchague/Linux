# TD_youtube-converter
## Installation
Télécharger le script avec la commande suivante :
```
curl -O https://github.com/Lucasmouchague/TD_Bash/blob/master/Youtube-converter/youtube-converter.sh
```
Puis mettez le en éxecutable : 
```
chmod +x youtube-converter.sh
```
## Utilisation
Le script vous permet de telecharger l'audio d'une vidéo youtube. Vous devez passer en argument l'URL de la vidéo voulu et elle sera placer dans un répertoire Musique/download-youtube. Si le répertoire n'existe pas il sera alors creer.
```
nawak@nawak-VirtualBox:~$ ./youtube-converter.sh https://www.youtube.com/watch?v=N3oCS85HvpY
[+] Folder doesn't exist, creating one...
[youtube] N3oCS85HvpY: Downloading webpage
[youtube] N3oCS85HvpY: Downloading video info webpage
[download] Destination: Pixies - Where Is My Mind-N3oCS85HvpY.webm
[download] 100% of 3.51MiB in 00:00
[ffmpeg] Destination: Pixies - Where Is My Mind-N3oCS85HvpY.opus
Deleting original file Pixies - Where Is My Mind-N3oCS85HvpY.webm (pass -k to keep)
nawak@nawak-VirtualBox:~$ ls Musique/download-youtube/
'Pixies - Where Is My Mind-N3oCS85HvpY.opus'
nawak@nawak-VirtualBox:~$ 

```