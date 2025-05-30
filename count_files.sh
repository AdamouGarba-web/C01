#!/bin/bash
# Ce script compte le nombre de fichiers dans un dossier donné

read myfolder  # On lit le nom du dossier à analyser

# On compte le nombre de fichiers (pas les dossiers)
count=$(ls -p "$myfolder" 2>/dev/null | grep -v / | wc -l)

# On affiche le résultat
echo "Le dossier $myfolder contient $count fichier(s)."
