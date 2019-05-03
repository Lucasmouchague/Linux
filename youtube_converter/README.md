# TD_youtube-converter
## Installation :
Télécharger le script avec la commande suivante :
```
git clone https://github.com/Lucasmouchague/TD_Bash.git
```
Puis mettez le en éxecutable : 
```
chmod +x TD_Bash/youtube_converter/youtube-converter.sh
```
## Utilisation :
Le script vous permet de telecharger l'audio d'une vidéo youtube. Vous devez passer en argument l'URL de la vidéo voulu et elle sera placer dans un répertoire Musique/download-youtube. Si le répertoire n'existe pas il sera alors creer.
```
nawak@nawak-VirtualBox:~$ ./youtube-converter.sh https://www.youtube.com/watch?v=N3oCS85HvpY
[?]Checking folder...

[+]Downloading and converting...
[youtube] N3oCS85HvpY: Downloading webpage
[youtube] N3oCS85HvpY: Downloading video info webpage
[download] Destination: Pixies - Where Is My Mind-N3oCS85HvpY.webm
[download] 100% of 3.51MiB in 00:00
[ffmpeg] Destination: Pixies - Where Is My Mind-N3oCS85HvpY.opus
Deleting original file Pixies - Where Is My Mind-N3oCS85HvpY.webm (pass -k to keep)

[!]Enjoy your music
nawak@nawak-VirtualBox:~$ ls $HOME/Music/youtube-download/
'Pixies - Where Is My Mind-N3oCS85HvpY.opus'
```
## Test
### Sans URL :
```
nawak@nawak-VirtualBox:~$ ./youtube-converter.sh 
Ta pas mis d'URL frère
```
### Sans le dossier Music ou Musique :
Il creer automatiquement alors le dossier Music dans le home de l'utilisateur courant et le dossier youtube-download puis il met la musique dedans.
```
nawak@nawak-VirtualBox:~$ 
[?]Checking folder...
[!] Music folder doesn't exist, creating one...
[+] Music folder created
[!] youtube-download folder doesn't exist, creating one...
[+] youtube-folder created

[+]Downloading and converting...
[youtube] VYOjWnS4cMY: Downloading webpage
[youtube] VYOjWnS4cMY: Downloading video info webpage
[youtube] VYOjWnS4cMY: Downloading js player vfl61X81T
[download] Destination: Childish Gambino - This Is America (Official Video)-VYOjWnS4cMY.webm
[download] 100% of 3.86MiB in 00:00
[ffmpeg] Destination: Childish Gambino - This Is America (Official Video)-VYOjWnS4cMY.opus
Deleting original file Childish Gambino - This Is America (Official Video)-VYOjWnS4cMY.webm (pass -k to keep)

[!]Enjoy your music

nawak@nawak-VirtualBox:~$ ls /home/nawak/Music/youtube-download/
'Childish Gambino - This Is America (Official Video)-VYOjWnS4cMY.opus'
```
### Avec le dossier Music mais sans dossier youtube-dl :
Il creer automatiquement le Dossier youtube-dl et met la musique dedans.
```
nawak@nawak-VirtualBox:~$ ./youtube-converter.sh https://www.youtube.com/watch?v=FNdC_3LR2AI
[?]Checking folder...
[!] Music folder already exist
[+] Creating youtube-download folder
[+] youtube-download folder created

[+]Downloading and converting...
[youtube] FNdC_3LR2AI: Downloading webpage
[youtube] FNdC_3LR2AI: Downloading video info webpage
[download] Destination: Gojira - Stranded [OFFICIAL VIDEO]-FNdC_3LR2AI.webm
[download] 100% of 4.05MiB in 00:00
[ffmpeg] Destination: Gojira - Stranded [OFFICIAL VIDEO]-FNdC_3LR2AI.ogg
Deleting original file Gojira - Stranded [OFFICIAL VIDEO]-FNdC_3LR2AI.webm (pass -k to keep)

[!]Enjoy your music
nawak@nawak-VirtualBox:~$ ls /home/nawak/Music/youtube-download/
'Gojira - Stranded [OFFICIAL VIDEO]-FNdC_3LR2AI.ogg'
```
### Avec le dossier Musique et le et le dossier youtube-dl :
Il detecte que le fichier Musique est présent et creer alors dedans le dossier youtube-download et y met la musique.
```
nawak@nawak-VirtualBox:~$ ./youtube-converter.sh https://www.youtube.com/watch?v=8IUySFHPTF4
[?]Checking folder...
[!] Musique folder already exist
[+] Creating youtube-download folder
[!] Musique folder created

[+]Downloading and converting...
[youtube] 8IUySFHPTF4: Downloading webpage
[youtube] 8IUySFHPTF4: Downloading video info webpage
[download] Destination: Suprême NTM - Pass pass le oinj (Audio)-8IUySFHPTF4.m4a
[download] 100% of 3.78MiB in 00:00
[ffmpeg] Correcting container in "Suprême NTM - Pass pass le oinj (Audio)-8IUySFHPTF4.m4a"
[ffmpeg] Post-process file Suprême NTM - Pass pass le oinj (Audio)-8IUySFHPTF4.m4a exists, skipping

[!]Enjoy your music
nawak@nawak-VirtualBox:~$ ls /home/nawak/Musique/youtube-download/
'Suprême NTM - Pass pass le oinj (Audio)-8IUySFHPTF4.m4a'

```
### Avec un dossier Music et Musique :
Il va choisir le dossier Music
```
nawak@nawak-VirtualBox:~$ ./youtube-converter.sh https://www.youtube.com/watch?v=HgzGwKwLmgM
[?]Checking folder...
[!] Music folder already exist
[+] Creating youtube-download folder
[+] youtube-download folder created

[+]Downloading and converting...
[youtube] HgzGwKwLmgM: Downloading webpage
[youtube] HgzGwKwLmgM: Downloading video info webpage
[download] Destination: Queen - Don't Stop Me Now (Official Video)-HgzGwKwLmgM.webm
[download] 100% of 3.27MiB in 00:00
[ffmpeg] Destination: Queen - Don't Stop Me Now (Official Video)-HgzGwKwLmgM.opus
Deleting original file Queen - Don't Stop Me Now (Official Video)-HgzGwKwLmgM.webm (pass -k to keep)

[!]Enjoy your music
nawak@nawak-VirtualBox:~$ ls /home/nawak/Music/youtube-download/
'Queen - Don'\''t Stop Me Now (Official Video)-HgzGwKwLmgM.opus'

```
### Quand le chemin /Music/youtube-download/ existe deja :
```
nawak@nawak-VirtualBox:~$ ./youtube-converter.sh https://www.youtube.com/watch?v=2Py19FB0y8c
[?]Checking folder...
[!] Path to download already exist

[+]Downloading and converting...
[youtube] 2Py19FB0y8c: Downloading webpage
[youtube] 2Py19FB0y8c: Downloading video info webpage
[download] Destination: 'SHUNT' craking el fion_0001-2Py19FB0y8c.webm
[download] 100% of 3.19MiB in 00:00
[ffmpeg] Destination: 'SHUNT' craking el fion_0001-2Py19FB0y8c.opus
Deleting original file 'SHUNT' craking el fion_0001-2Py19FB0y8c.webm (pass -k to keep)

[!]Enjoy your music
nawak@nawak-VirtualBox:~$ ls /home/nawak/Music/youtube-download/
'Queen - Don'\''t Stop Me Now (Official Video)-HgzGwKwLmgM.opus'
"'SHUNT' craking el fion_0001-2Py19FB0y8c.opus"
```
### Quand le chemin /Musique/youtube-download/ existe deja :
```
nawak@nawak-VirtualBox:~$ ./youtube-converter.sh https://www.youtube.com/watch?v=fBf_n6pohJI
[?]Checking folder...
[!] Path to download already exist

[+]Downloading and converting...
[youtube] fBf_n6pohJI: Downloading webpage
[youtube] fBf_n6pohJI: Downloading video info webpage
[download] Destination: Mr. Oizo - M-Seq (HD Quality sound)-fBf_n6pohJI.webm
[download] 100% of 5.15MiB in 00:00
[ffmpeg] Destination: Mr. Oizo - M-Seq (HD Quality sound)-fBf_n6pohJI.opus
Deleting original file Mr. Oizo - M-Seq (HD Quality sound)-fBf_n6pohJI.webm (pass -k to keep)

[!]Enjoy your music
nawak@nawak-VirtualBox:~$ ls /home/nawak/Musique/youtube-download/
'Mr. Oizo - M-Seq (HD Quality sound)-fBf_n6pohJI.opus'
'Suprême NTM - Pass pass le oinj (Audio)-8IUySFHPTF4.m4a'
```
