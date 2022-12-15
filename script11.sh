#!/bin/bash
#  Realizar un script utilizando la estructura el bucle for que muestre el siguiente patrón:

win=$(($RANDOM% 100 + 1))
read -p "dame un numero entre el 100 y el 1, rescuerda que el 0 es para salir  " numero
	until [[ $numero -eq $win || $numero -eq 0 ]]
	do	
		if [[ $numero > $win ]]; then
			echo "el numero introducido es mayor al que tienes que averiguar "
		elif [[ $numero < $win ]];then
			echo "es numero introducido es menor alq ue tienes que averiguar "
		else
		       	echo "has ganado el numero era $win"	
		fi
		read -p "dame otro número" numero
	done
