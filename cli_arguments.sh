#!/bin/bash

# Lecture de ligne Tapée par l'utilisateur
read -r -a args

# Initialisation du compteur
i=1

# Affichage des arguments
for arg in "${args[@]}"; do
  echo "Argument ${i}: $arg"
  i=$((i+1))
done
