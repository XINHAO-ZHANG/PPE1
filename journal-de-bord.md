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

### Création du premier script(sur l'éditeur VIM):
• ajouter des commentaires #   
• ajouter un shebang #!/usr/bin/bash    
• rendre le fichier exécutable (avec chmod +x)   

### Usage de l'éditeur VIM:
• i pour insérer le contenu ou rendre le fichier éditable   
• quand on a fini le travail, on tape Esc pour sortir du modèle édit.   
• alors, shift + : wq pour on va tout écrire et quitter l'éditeur.  


<pre><font color="#2AA1B3">#! /usr/bin/bash</font>
cd &apos;/home/zhang/文档/projetencadre/PPE1/Fichiers&apos;
echo &quot;Pour l&apos;annee 2016:&quot; &gt; sortie.txt
grep &quot;Location&quot; 2016*.ann | wc -l &gt;&gt; sortie.txt 

</pre>


## Séance4 12.10.2022 ARGUMENTS DU BASH SCRIPTS

### Quelques commandes en plus:
wc -l : nous permet de compter les lignes des fichiers    
echo : pour écrire une chaîne de caractère en sortie    
file : pour voir l'encodage du fichier    
hexdump : pour voir les codes héxadécimaux du fichier encodé en codes binaires   

Dans le scipt BASH, on ajoute $ a l'avance pour désigner la nature de variable.  

<pre>#! /usr/bin/bash
cd &apos;/home/zhang/文档/projetencadre/PPE1/Fichiers&apos;                         
ANNEE=$1
TYPE=$2

echo &quot;Pour l&apos;annee $ANNEE&quot; &gt; sortie1.txt
grep &quot;$TYPE&quot; $ANNEE*.ann | wc -l &gt;&gt; sortie1.txt
<font color="#2A7BDE">                                                   </font></pre>

## Séance5 19.10.2022 INSTRUCTION DE CONTRÔLE(SHELL) ET HTML 
Lors de cette séance, on a appris que l'on peut touot simplement créer un website par l'intermédiaire d'un répertoire nouvellement établieGITPAGE.   

Également, le grammaire HTML a été présenté. Html est un langage de balisage qui sert à indiquer au navigateur comment structurer les pages web visitées. Les contenus sont toujours entourés par une balise ouvrante et fermante qui contiennent des éléments. Chaque élément peut avoir des attributs caractérisant ces éléments. Les détails peuvent faire référence a deux lien utiles:https://developer.mozilla.org/fr/docs/Web/HTML/Element; https://www.runoob.com/html/html-tutorial.html   

Pour moins d’ambiguïté, les balises sont marquées explicitement. il y en a 3 types :  
• Ouvrantes : <balise> → le début d’une zone  
• Fermantes : </balise> → la fin d’une zone  
• Ouvrantes et fermantes à la fois : <balise/> → "ancre"  

### La Commande cURL
Nous traitons donc le premier fichier contenu dans le dossier URLs et dans ce fichier nous traitons la première url, nous devons récupérer le contenu du site, pour cela nous utilisons la commande wget. C'est en fait un programme qui peut s'utiliser en ligne de commande justement pour télécharger du contenu depuis le web. La syntaxe est la suivante :

    curl [option] [url]

La commande curl possède de nombreuses options. Il y en a une qui nous intéresse particulièrement : -i pour entrer en plus détail.

### Lynx : formatage en texte brut
Cela étant fait, nous voulons transformer ce fichier html en texte brut pour pouvoir le traiter par la suite. Pour cela nous faisons appel à un navigateur qui s'utilise en ligne de commande : lynx. Avec certaines options, il permet d'extraire le contenu de la page web. Cette première option s'appelle dump, on ajoute à celle-ci une option -nolist qui va supprimer tous les liens contenus dans la page, c'est une première étape de nettoyage du fichier obtenu. En effet, l'ensemble des liens n'est pas pertinent dans l'analyse qui va suivre. On obtient donc la ligne de commande suivante :

    lynx -dump -nolist url

Enfin on ajoute les options display_charset et assume_charset, qui, respectivement, forcent l'encodage de départ des pages qui n'en spécifient aucun et encode le fichier d'arrivée. Pour définir le fameux fichier d'arrivée, on ajoute la redirection de flux vers le nom du fichier cette fois-ci au format txt :

    lynx -dump -nolist -assume_charset=encodage -display_charset=encodagesortie url > nom_fichier.txt   

## Séance6 26.10.2022 TRAITEMENT URLS

Après avoir bien rassemblé tous les URLs chinois, on se met a les traiter et a établir le tableau.   
J'ai essayé de récupérer quelques informations intéressantes sur le tableau que l'on veut en vue de me familliariser le grammaire HTML, puisque le tableau se génère généralement au format HTML.
Donc, j'ai commencé simplement:
<html>

<head>
	<meta charset="UTF-8" />
	<title>TABLEAU SIMPLE</title>
</head> <!--configuration de l'entête-->

<body><!--début du corps de la page-->
	<table border="10px" bordercolor = "#FF0000"><!--configuration de table-->
		<tr><td>numero de ligne</td><td>URL</td></tr><!--creation d<une table avec seulement deux colonnes-->
	</table>
</body>

</html>

Une fois la table crée, voyons comment utiliser un boucle pour lire automatiquement un texte ligne par ligne et numéroter ces lignes.  

### Vérifier si URL qu'on trouve est bon, il y a deux méthodes :

1 : vérifier si le début de la ligne commence par http(s):
<pre>#! /usr/bin/bash
if [ $ # - ne 1 ]
then
        echo &quot; ce programme demande un argument &quot;
                exit
fi
FICHIER_URLS = $1
OK =0
NOK =0
while read -r LINE ;
do
        echo &quot; la ligne : $LINE &quot;
        if [[ $LINE =∼ &quot; ^ https ?:// &quot; ]]
        then
                echo &quot; ressemble à une URL valide &quot;
                OK = $ ( expr $OK + 1)
        else
                echo &quot; ne ressemble pas à une URL valide &quot;
                NOK = $ ( expr $NOK + 1)
        fi
done &lt; $FICHIER_URLS
echo &quot; $OK URLs et $NOK lignes douteuses &quot;
</pre>


2: de manière plus minutieuse à l'aide de la commande -curl, qui sert à entrer dans la page html du lien et à récupérer des informations du html

<pre>FICHIER=$1
URLS=$(cat  $FICHIER)

for URL in $URLS
do 
        LINE=$(curl -I $URL)
        if [[  $LINE =~ &quot;HTTP&quot;  ]]
        then
                echo &quot;URL&quot;
        else
                echo &quot;Non URL&quot;
        fi
done
</pre>


## Séance7.8.9.10 URLS ET TABLEAUX

### des contextes

Une fois que l'on connaîtt que lynx permet de récupérer le texte brut du contenu de la page, nous allons chercher dans le site les contextes dans lesquels sont utilisés notre mot, "réfugiés". Pour cela, on utilise une expression régulière avec la commande egrep (quelques explications ici) à laquelle on ajoute différentes options.

La première option est -i qui permet d'ignorer la casse, ainsi on pourra trouver aussi bien "réfugiés" que "Réfugiés" que "RéFugIs" si besoin est. Ensuite on ajoute l'option -o, seuls les matchs trouvés sont affichés (et non le fichier entier avec les matchs en surbrillance), un sur chaque ligne.

    egrep -i -o "mot" > fichiercontexte.txt

Pour avoir le nombre d'occurence du mot dans le tableau, on va ajouter l'option -c (count) pour qu'il nous indique combien de fois il a trouvé le mot dans le site en question, on reprend donc la même expression régulière, mais en ajoutant -c. Notez qu'on peut regrouper les options ainsi :

    egrep -ioc "mot" > fichiercontexte.txt

### Généralisation pour url et fichier

La première boucle va nous permettre de parcourir tous les fichiers du dossier. On utilise une boucle for à laquelle on donne une première variable $fichier et ensuite la commande ls pour traiter tous les fichiers contenus dans le dossier $dossierurl dont on a parlé plus haut. La syntaxe est donc la suivante :

    for line in `ls $dossierurl`

La variable $line ne s'affiche pas comme une commande dans le script mais c'est normal, inutile de paniquer comme nous l'avons fait ! Il faudra bien entendu fermer la boucle à la fin du script et indiquer quelle est finie avec le mot done. 

### Réalisation des dumps et contextes 

Pour le traitement final nous avons besoin de fichiers rassemblant tous les dumps, nous allons aussi réaliser un fichier contenant tous les contextes. Ce sont les commandes echo et cat combinées qui vont nous permettre d'inclure le contenu du fichier dump que l'on vient de créer dans un fichier global.

    echo `cat ../DUMP-TEXT/"$tab-$compteur` >> ../FICHIERSGLOBAUX/"dumpglobaux-$tab"

Pour les contextes, on créé d'abord la variable contexte qu'on va ensuite ajouter dans le fichier global. Pour la variable des contextes on utilise de nouveau egrep mais cette fois on utilise l'option -C suivie d'un nombre qui indique le nombre de ligne que l'on veut prendre avant et après l'expression régulière. On pourrait aussi utiliser les options -A et -B qui permettent de choisir le nombre de ligne avant (-B, before) et le nombre de ligne après (-A, after).

    contexte=$(egrep -i -C 4 "$mots[$tab]" ../DUMP-TEXT/"$tab-$compteur")

    echo "$contexte" >> ../FICHIERSGLOBAUX/"contextesglobaux-$tab"

On créé aussi un fichier pour chaque contexte, c'est exactement comme pour la création des fichiers dumps :

    echo "$contexte" >> ../CONTEXTES/"$tab-$compteur"   
    
### Problèmes d'encodage

Puisque le texte en chinois est gravement susceptible d'être encodé par l'encodage GKB, avec l'encodage défini dans la variable $encodage ou $charset , on utilise donc cette variable dans iconv. Les options -f (from) et -t (to) vont donner les encodages de départ et d'arrivée du fichier.

    iconv -f $encodage/$charset -t UTF8 ../DUMP-TEXT/$tab-$compteur.txt > ../DUMP-TEXT/"$tab-$compteur.txt"
    
### Segementation du texte chinois 

Comme il n’y a pas d’espace entre les caractères chinois, il est difficile de isoler les mots et de les compter et de les trier. Nous devons donc faire appel a un outil qui permet de segmenter les caractères chinois. 

L’objectif est de passer du texte à un compte rendu des mots compté et trié. L’outil Thulac permet de faire la tokennisation sur un texte chinois, c’est à dire de séparer un mot qui fait sens d’un autre avec un espace sur Python.

la commande devrait ressembler à ceci:
![Alt text] PPE1/thulac.png 


