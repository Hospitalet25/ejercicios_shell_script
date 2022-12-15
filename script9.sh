#!/bin/bash
#  Realizar un script utilizando la estructura el bucle for que muestre el siguiente patrón:

read -p "dame un numero par o impar" numero
	let resto=$numero%2
		if [[ $resto -eq 0 ]]; then
			echo "es par"
		else 
			echo "es impar"
fi	
