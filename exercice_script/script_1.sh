#!/usr/bin/bash
# pour l'année 2016-2017-2018, on crée un fichier sortie.txt et y écrit
echo "pour l'année 2016" > sortie.txt
grep "Location" 2016*.ann | wc -l >> sortie.txt
echo "pour l'année 2017" >> sortie.txt
grep "Location" 2017*.ann | wc -l >> sortie.txt
echo "pour l'année 2018" >> sortie.txt
grep "Location" 2018*.ann | wc -l >> sortie.txt
