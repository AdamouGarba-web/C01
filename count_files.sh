#!/bin/bash
# Fonction pour compter les fichiers dans un répertoire
count_files() {
  local folder="$1"
  if [ ! -d "$folder" ]; then
    echo "Erreur : '$folder' n'est pas un dossier valide."
    return 1
  fi
  local count
  count=$(find "$folder" -type f | wc -l)
  echo "Le dossier $folder contient $count fichier(s)."
}
# Vérifie l'argument
if [ $# -ne 1 ]; then
  echo "Usage : $0 <nom_dossier>"
  exit 1
fi
count_files "$1"
