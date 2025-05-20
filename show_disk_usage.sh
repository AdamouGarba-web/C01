#!/bin/bash

# Fonction pour afficher l'utilisation du disque
show_usage() {
  local path="${1:-.}"
  if [ ! -d "$path" ]; then
    echo "Erreur : '$path' n'est pas un dossier valide."
    return 1
  fi
  echo "Utilisation globale du disque :"
  df -h
  echo ""
  echo "Utilisation du dossier '$path' :"
  du -sh "$path"
}
show_usage "$1"
