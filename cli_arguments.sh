#!/bin/bash
# Affiche chaque argument ligne par ligne

count=1
for arg in "$@"; do
  echo "Argument $count: $arg"
  ((count++))
done
