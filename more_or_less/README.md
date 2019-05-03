# TD_Plus ou moins
## Présentation du jeux
Le jeux est simple le programme tire au hasard un nombre entre 0 et 1000 et après vous demande de trouvé le nombre mystère. A chaque essaie il vous indiquera si le nombre que vous avez donné est trop grand ou trop petit. 

## Démonstration
Télecharger le script more_or_less.sh
```
git clone https://github.com/Lucasmouchague/TD_Bash.git
```
Puis mettre le fichier en executable.
```
chmod +x TD_Bash/more_or_less/more_or_less.sh
```
Puis vous pouvez le lancer
```
./TD_Bash/more_or_less/more_or_less.sh
```
```
Bienvenue mesdames et messieurs pour notre super jeux... Le plus ou moins.
Le jeux consiste a trouver un chiffre alÃ©atoire entre 0 et 1000
Si vous gagnez bah bravo c'est cool.


Appuyez sur entree pour continuer...
Alors tu trouve ? : 500
Wesh c'est plus grand frere!
Alors tu trouve ? : 850
Mais non c'est plus bas!
Alors tu trouve ? : 750
Mais non c'est plus bas!
Alors tu trouve ? : 650
Mais non c'est plus bas!
Alors tu trouve ? : 625
Mais non c'est plus bas!
Alors tu trouve ? : 550
Wesh c'est plus grand frere!
Alors tu trouve ? : 575
Wesh c'est plus grand frere!
Alors tu trouve ? : 600
Mais non c'est plus bas!
Alors tu trouve ? : 595
Mais non c'est plus bas!
Alors tu trouve ? : 585


Et ouai ta devine le nombre mystere en 10 tentative
```
Amusez vous!
## Test
### Si on essaye de rentrer autre chose que des chiffres :
```
Bienvenue mesdames et messieurs pour notre super jeux... Le plus ou moins.
Le jeux consiste a trouver un chiffre alÃ©atoire entre 0 et 1000
Si vous gagnez bah bravo c'est cool.


Appuyez sur entree pour continuer...
Alors tu trouve ? : fbezaf
M'embrouille meme pas c'est pas des chiffres!
Alors tu trouve ? : 
```
### Si on essaye de rien mettre :
```
Bienvenue mesdames et messieurs pour notre super jeux... Le plus ou moins.
Le jeux consiste a trouver un chiffre alÃ©atoire entre 0 et 1000
Si vous gagnez bah bravo c'est cool.


Appuyez sur entree pour continuer...
Alors tu trouve ? : 
Tu sais je suis pas dupe mon petit ta rien mis.
Alors tu trouve ? :
```