#!/usr/bin/bash
cd '/home/zhang/文档/projetencadre/PPE1/Fichiers' 
ANNEE=$1
TYPE=$2
echo "Pour l'annee $ANNEE" > sortie1.txt
grep "$TYPE" $ANNEE*.ann | wc -l >> sortie1.txt
