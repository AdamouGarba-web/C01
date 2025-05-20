#!/bin/bash
# Fonction calculatrice
calculate() {
  local a="$1"
  local b="$2"
  local op="$3"
  # Vérification de type
  if ! [[ "$a" =~ ^-?[0-9]+$ && "$b" =~ ^-?[0-9]+$ ]]; then
    echo "Erreur : les deux premiers arguments doivent être des entiers."
    return 1
  fi
  case "$op" in
    +) echo "Résultat : $((a + b))" ;;
    -) echo "Résultat : $((a - b))" ;;
    \*) echo "Résultat : $((a * b))" ;;
    /)
      if [ "$b" -eq 0 ]; then
        echo "Erreur : division par zéro."
        return 1
      fi
      echo "Résultat : $((a / b))"
      ;;
    *)
      echo "Erreur : opérateur invalide. Utiliser + - * /"
      return 1
      ;;
  esac
}
# Vérifie le nombre d'arguments
if [ $# -ne 3 ]; then
  echo "Usage : $0 <nombre1> <nombre2> <opérateur>"
  exit 1
fi
calculate "$1" "$2" "$3"
