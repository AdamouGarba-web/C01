#!/bin/bash

# Vérifie que trois arguments sont passés
if [ $# -ne 3 ]; then
  echo "Usage: $0 nombre1 nombre2 opérateur"
  echo "Exemple : $0 5 3 +"
  exit 1
fi

n1=$1
n2=$2
op=$3

# Vérifie que les deux premiers arguments sont des nombres
if ! [[ "$n1" =~ ^-?[0-9]+$ ]] || ! [[ "$n2" =~ ^-?[0-9]+$ ]]; then
  echo "Erreur : les deux premiers arguments doivent être des entiers."
  exit 1
fi

# Calcul selon l’opérateur
case "$op" in
  +)
    res=$((n1 + n2))
    ;;
  -)
    res=$((n1 - n2))
    ;;
  \*)
    res=$((n1 * n2))
    ;;
  /)
    if [ "$n2" -eq 0 ]; then
      echo "Erreur : division par zéro."
      exit 1
    fi
    res=$((n1 / n2))
    ;;
  *)
    echo "Erreur : opérateur non valide. Utilisez +, -, *, ou /."
    exit 1
    ;;
esac

# Affiche le résultat
echo "Résultat : $res"
