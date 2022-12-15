#!/bin/bash
#  Realizar un script utilizando la estructura el bucle for que muestre el siguiente patrón:

numero=$1
let respuesta=$numero%2
	if [[ $respuesta -eq 0 ]]; then
		echo "no es primo"
	else
		echo "es primo"
	fi

