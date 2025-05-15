#!/bin/bash

# Affiche l'utilisation globale du disque
echo "Utilisation globale du disque :"
df -h /

echo ""

# Si un répertoire est fourni en argument, afficher son poids
if [ -n "$1" ]; then
  if [ -d "$1" ]; then
    echo "Taille du répertoire '$1' :"
    du -sh "$1"
  else
    echo "Erreur : '$1' n'est pas un répertoire valide."
    exit 1
  fi
else
  echo "Conseil : vous pouvez aussi fournir un répertoire en argument pour voir sa taille."
fi
