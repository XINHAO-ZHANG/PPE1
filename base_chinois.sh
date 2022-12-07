#!/usr/bin/env bash

#===============================================================================
# VOUS DEVEZ MODIFIER CE BLOC DE COMMENTAIRES.
# Ici, on décrit le comportement du programme.
# Indiquez, entre autres, comment on lance le programme et quels sont
# les paramètres.
# La forme est indicative, sentez-vous libres d'en changer !
# Notamment pour quelque chose de plus léger, il n'y a pas de norme en bash.
#===============================================================================

fichier_urls=$1 # le fichier d'URL en entrée
fichier_tableau=$2 # le fichier HTML en sortie

if [[ $# -ne 2 ]]
then
	echo "Ce programme demande exactement deux arguments."
	exit
fi

mot="背井离乡" # à modifier

echo $fichier_urls;
basename=$(basename -s .txt $fichier_urls)

echo "<html><body>" > $fichier_tableau
echo "<h2>Tableau $basename :</h2>" >> $fichier_tableau
echo "<br/>" >> $fichier_tableau
echo "<table>" >> $fichier_tableau
echo "<tr><th>ligne</th><th>code</th><th>URL</th><th>encodage</th></tr>" >> $fichier_tableau

lineno=1;
while read -r URL; do
	echo -e "\tURL : $URL";
	# la façon attendue, sans l'option -w de cURL
	code=$(curl -ILs $URL | grep -e "^HTTP/" | grep -Eo "[0-9]{3}" | tail -n 1)     
	## -s : mode silencieux : éviter afficher tout pas nécessaire   -o : uniquement ce qui est reconnu  cut -d " " -f2 = grep -Eo "[0-9]{3}"
	## tail -n 1 : on prend la dernière ligne
	charset=$(curl -ILs $URL | grep -Eo "charset=(\w|-)+" | cut -d= -f2)
	## \w : lettre ou chiffre, pour avoir une séquence de lettres, chiffres et tiret
	## cut -d= f2 : separer par "="             -d= : délimiteur est "=", pour découper les colones    -f2 : la dexième colone, morceau découpé par "d"
	aspiration=$(curl $URL>aspirations/$basename-$lineno.html)
	# autre façon, avec l'option -w de cURL
	# code=$(curl -Ls -o /dev/null -w "%{http_code}" $URL)       -w
	# charset=$(curl -ILs -o /dev/null -w "%{content_type}" $URL | grep -Eo "charset=(\w|-)+" | cut -d= -f2)

	echo -e "\tcode : $code";

	if [[ ! $charset ]]
	then
		echo -e "\tencodage non détecté, on prendra UTF-8 par défaut.";
		charset="UTF-8";
	else
		echo -e "\tencodage : $charset";
	fi

	if [[ $code -eq 200 ]]
	then
		dump=$(lynx -dump -nolist -assume_charset=$charset -display_charset=$charset $URL)
		## -dump : le texte de toutes les balises HTML          -nolist : ne pas avoir une liste a la fin
		if [[ $charset -ne "UTF-8" && -n "$dump" ]]     ## -n "$dump" : assurer c'est pas vide
		then
			dump=$(echo $dump | iconv -f $charset -t UTF-8//IGNORE)
		fi
	else
		echo -e "\tcode différent de 200 utilisation d'un dump vide"
		dump=""
		charset=""
	fi
	echo "$dump" > "dump-text/$basename-$lineno.txt"
	echo "<tr><td>$lineno</td><td>$code</td><td><a href=\"$URL\">$URL</a></td><td>$charset</td></tr>" >> $fichier_tableau
	echo -e "\t--------------------------------"
	lineno=$((lineno+1));
done < $fichier_urls
echo "</table>" >> $fichier_tableau
echo "</body></html>" >> $fichier_tableau
