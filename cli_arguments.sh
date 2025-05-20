#!/bin/bash
# Fonction pour afficher les arguments ligne par ligne
print_arguments() {
  local index=1
  for arg in "$@"; do
    echo "Argument $index: $arg"
    ((index++))
  done
}
# Vérifie la présence d'au moins un argument
if [ $# -eq 0 ]; then
  echo "Usage : $0 <arg1> <arg2> ..."
  exit 1
fi
print_arguments "$@"
