#!/bin/bash
# Affiche l'utilisation disque

if [ $# -eq 1 ]; then
  # Si un argument est donné, afficher l'utilisation de ce dossier
  if [ -d "$1" ]; then
    echo "Utilisation du dossier $1 :"
    du -sh "$1"
  else
    echo "Erreur : $1 n'est pas un dossier valide."
    exit 1
  fi
else
  # Sinon, afficher l'utilisation globale du disque
  echo "Utilisation globale du disque :"
  df -h
fi
