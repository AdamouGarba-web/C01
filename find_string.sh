#!/bin/bash

# Vérifie qu'on a bien deux arguments : le fichier et la chaîne
if [ $# -ne 2 ]; then
  echo "Usage: $0 nom_du_fichier chaîne_à_rechercher"
  exit 1
fi

fichier="$1"
chaine="$2"

# Vérifie si le fichier existe
if [ ! -f "$fichier" ]; then
  echo "Erreur : le fichier '$fichier' n'existe pas."
  exit 1
fi

# Recherche la chaîne avec grep
if grep -q "$chaine" "$fichier"; then
  echo "La chaîne '$chaine' a été trouvée dans $fichier."
else
  echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi
