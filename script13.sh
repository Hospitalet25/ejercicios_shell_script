#!/bin/bash
#  Realizar un script utilizando la estructura el bucle for que muestre el siguiente patrón:
numero=1
num1=0
	until [ $numero -eq 0 ]
	do
		read -p "Introduce un valor a sumar " numero
		echo -e "$numero + $num1 = \c "
		let num1=$numero+$num1
		echo -e "$num1"
	done

