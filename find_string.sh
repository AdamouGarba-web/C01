#!/bin/bash
# Ce script cherche une chaîne spécifique dans un fichier

read filename     # Lire le nom du fichier
read search       # Lire la chaîne à rechercher

# Vérifier si la chaîne existe dans le fichier
if grep -q "$search" "$filename" 2>/dev/null; then
    echo "La chaîne '$search' a été trouvée dans $filename."
else
    echo "La chaîne '$search' n'a pas été trouvée dans $filename."
fi
