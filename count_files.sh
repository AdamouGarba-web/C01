#!/bin/bash

# Vérifie si un nom de dossier a été fourni
if [ -z "$1" ]; then
  echo "Usage: $0 nom_du_dossier"
  exit 1
fi

# Vérifie si le dossier existe
if [ ! -d "$1" ]; then
  echo "Erreur : le dossier '$1' n'existe pas."
  exit 1
fi

# Compte le nombre de fichiers (ignore les dossiers)
count=$(find "$1" -type f | wc -l)

# Affiche le résultat
echo "Le dossier $1 contient $count fichier(s)."
