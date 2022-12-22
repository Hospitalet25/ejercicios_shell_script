#!/bin/bash
#  Realizar un script utilizando la estructura el bucle for que muestre el siguiente patrón:
numero=200
until [[ $numero -eq 0 ]]
do
	echo "1 sumar"
	echo "2-restar"
	echo "3- Dividir"
	echo "4-Multiplicar"
	echo "0-Salir"
	read -p "dime un numero de los mencionados arribar" numero
	read -p "Introduce un numero " num1
	read -p "otro " num2
		case $numero in
			1)
				echo "sumar "
				let suma=$num1+$num2
				echo "$num1 + $num2 = $suma "
				sleep 5
				clear
				;;
			2)
				echo "restar"
				let resta=$num1-$num2
				echo " $num1 - $num2 = $resta "
				sleep 5
				clear
				;;
			3)
				echo "dividir"
				let dividir=$num1/$num2
				echo "$num1/$num2 = $dividir"
				sleep 5
				clear
				;;
			4)	
				echo "Multiplicar"
				let multi=$num1*$num2
				echo "$num1*$num2 = $multi "
				sleep 5
				clear
				;;
			0)	
				echo "Dame un número valido de los dichos anteriormente salir"
				;;
			[5-9999999999999999999999])    		
				reboot 
				;;
		esac
done
