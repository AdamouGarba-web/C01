#!/bin/bash
# Calculatrice simple qui prend deux nombres et un opérateur

read num1 num2 op

if [ "$op" = "+" ]; then
    result=$((num1 + num2))
elif [ "$op" = "-" ]; then
    result=$((num1 - num2))
elif [ "$op" = "*" ]; then
    result=$((num1 * num2))
elif [ "$op" = "/" ]; then
    if [ "$num2" -eq 0 ]; then
        echo "Erreur : division par zéro impossible."
        exit 1
    else
        result=$((num1 / num2))
    fi
else
    echo "Opérateur inconnu. Utilisez +, -, * ou /."
    exit 1
fi

echo "Résultat : $result"
