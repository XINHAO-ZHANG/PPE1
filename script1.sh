#!/usr/bin/bash
echo "Pour l'annee 2016:" > sortie.txt
grep "Location" 2016*.ann | wc -l >> sortie.txt
