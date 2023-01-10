# Journal de bord du projet encadré   
## Séance1 21.9.2022 UNIX

### Quelques notions a retenir:

Chemin absolu :Un chemin absolu identifie une ressource en commençant à la racine de l’arborescence, avec le caractère /. Un chemin absolu ne dépend pas du répertoire courant et est donc valide partout.

Chemin relatif :Un chemin relatif identifie une ressource à partir du répertoire courant. Il dépend donc du répertoire courant et n’est pas valide partout.

### Quelques commandes de base:

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

Les autres peuvent faire référence a: http://si1.lmdsio.fr/lessons/ligne-commande-linux   


## Séance2 28.9.2022 GITHUB   

Après l'installation du GIT sur notre machine, on a pu, par le biais de la commande GIT, connecter le répetoire en nuage localement.  

### Commandes importantes de GIT:   
git clone: clone un dépôt dans un réportoire nouvellement créé  
git pull: faire un fetch du contenu d'un dépôt a distance, mettre a jour le dépôt local   
git add: ajouter le contenu de fichier dans un dépôt temporel
git commit -m: créer un nouveau commit contenant le contenu actuel de l'index et avec le message de validation décrivant la modification   
git push: publier le changement locaux et les charger vers un dépôt centralisé    
git status: assurer que git détecte bien les modifications

### ALLER PLUS LOINS AU GIT TAG
git tag : créer un nouveau tag   
git push origin tagname: push dans le dépôt   
git tag -a tagname -m `tagmessage` : ajouter le commit message en même temps   
git tag -d : supprimer le tag   

Pour récupérer l'identifiant SHA du commit:
Je devrai installer Tree sur mon terminal afin d'obtenir le chemin du tag. On va donc utiliser la commande cat pour y arriver.

<pre>└── <font color="#12488B"><b>refs</b></font>
    ├── <font color="#12488B"><b>heads</b></font>
    │   └── main
    ├── <font color="#12488B"><b>remotes</b></font>
    │   └── <font color="#12488B"><b>origin</b></font>
    │       ├── HEAD
    │       └── main
    └── <font color="#12488B"><b>tags</b></font>
        └── 20220928

272 directories, 2743 files
<font color="#26A269"><b>zhang@zhang-KPR-WX9</b></font>:<font color="#12488B"><b>~/文档/projetencadre/PPE1</b></font>$ cat .git/refs/tags/20220928
0a785381a0ad04b7ad517d3f424fdce0a24be2d0
</pre>

## Séance3 5.10.2022 INTRO AUX SCRIPTS

### Quelques commandes pour traiter le fichier:
sort: trier les lignes d'un fichier texte   
uniq : supprimer les doulons    
grep: permet de rechercher le contenu dont nous avons rempli dans l'argument dans des fichiers  

sort et uniq est normalement un ensemble des commandes pour acquérir un texte sans doublons et bien trié.

### Quelques expressions régulières:  
\* : appliquer une commande a plusieurs éléments  
\. : comme composant d'un nom de fichier

### Flux d'entrées-sorties avec le pipe:     
\> : permet de rediriger la sortie d'une commande vers un fichier en écrasant le contenu actuel   
\>\> :  rediriger la sortie d'une commande vers un fichier en ajoutant a la fin  
|: pipe permet de connecter plusieurs commandes












