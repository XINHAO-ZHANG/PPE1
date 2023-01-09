#Journal de bord du projet encadré   
#Séance1 21.9.2022 UNIX

Quelques notions a retenir:

chemin absolu :Un chemin absolu identifie une ressource en commençant à la racine de l’arborescence, avec le caractère /. Un chemin absolu ne dépend pas du répertoire courant et est donc valide partout.

chemin relatif :Un chemin relatif identifie une ressource à partir du répertoire courant. Il dépend donc du répertoire courant et n’est pas valide partout.

Quelques commandes de base:

pwd : permetttre de récupérer le chemin absolu du répertoire courant   
cd: se déplacer dans un répertoire   	
cd .. : remonte d'un cran dans la hiérarchie des rép   
ls : lister le contenu du dossier   
cat: affichier le contenu du fichier   
less: affichier le contenu du fichier mais d'une autre manière   
man (commande): affichier la description du commande en question dans un manuel   
rm : supprimer tous les fichier du répertoire   
rmdir:supprimer le répertoire   
head tail: première partie et dernière partie du fichier texte      



#Séance2 28.9.2022 GITHUB   

Après l'installation du GIT sur notre machine, on a pu, par le biais de la commande GIT, connecter le répetoire en nuage localement.  
commandes importantes de GIT:   
git clone: clone un dépôt dans un réportoire nouvellement créé  
git pull: faire un fetch du contenu d'un dépôt a distance, mettre a jour le dépôt local   
git add: ajouter le contenu de fichier dans un dépôt temporel
git commit -m: créer un nouveau commit contenant le contenu actuel de l'index et avec le message de validation décrivant la modification   
git push: publier le changement locaux et les charger vers un dépôt centralisé   

Flux d'entrées-sorties avee le pipe:  
sort: trier les lignes d'un fichier texte   
uniq : supprimer les doulons    
grep: permet de rechercher le contenu dont nous avons rempli dans l'argument dans des fichiers  

sort et uniq est normalement un ensemble des commandes pour acquérir un texte sans doublons et bien trié.
















