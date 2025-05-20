#!/bin/bash
# Fonction de recherche de chaîne dans un fichier
find_string() {
  local file="$1"
  local pattern="$2"
  if [ ! -f "$file" ]; then
    echo "Erreur : le fichier '$file' n'existe pas."
    return 1
  fi
  if grep -q "$pattern" "$file"; then
    echo "La chaîne '$pattern' a été trouvée dans $file."
  else
    echo "La chaîne '$pattern' n'a pas été trouvée dans $file."
  fi
}
# Vérifie les arguments
if [ $# -ne 2 ]; then
  echo "Usage : $0 <fichier> <chaine_a_rechercher>"
  exit 1
fi
find_string "$1" "$2"
