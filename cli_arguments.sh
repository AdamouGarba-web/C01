#!/bin/bash

# Vérifie s’il y a au moins un argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 arg1 [arg2 ...]"
  exit 1
fi

# Compteur de position
i=1

# Parcourt tous les arguments
for arg in "$@"; do
  echo "Argument $i: $arg"
  i=$((i + 1))
done
