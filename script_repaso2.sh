#!/bin/bash
#  Realizar un script utilizando la estructura el bucle for que muestre el siguiente patrón:


function aaaa() {

		echo " 1 reiniciar ya "
                echo " 2 Reiniciar el equipo dentro de N minutos (el valor de N se pasa como parámetro) RECUERDA QUE TIENES QUE PASAR EL TIEMPO COMO UN SEGUNDO PARAMETRO "
}

	if [[ $1 -eq null ]]; then 
		aaaa
	else

	case $1 in
		1) shutdown -r now
			;;
		2)  shutdown -r $2 
		       ;;
	esac	       
fi


