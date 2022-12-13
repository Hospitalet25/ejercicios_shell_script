#!/bin/bash
#En este ejercicio le vamos a pedir 2 numeros y el programa tiene que decir ccual de los 2 es mayor

read -p "dame un número entero " numero
read -p "dame otro " numero2

if [[ $numero -gt $numero2 ]]; then 
	echo "El  $numero es superior"
elif [[ $numero -eq $numero2 ]]; then
	echo "Los dos numero son iguales"
else 
	echo "El  $numero2 es superior"
fi

