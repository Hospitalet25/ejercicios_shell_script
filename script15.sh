#!/bin/bash
#  Realizar un script utilizando la estructura el bucle for que muestre el siguiente patrón:
	if [[ -d $1 ]];
	then
		echo "es un directorio "
	echo "************ficheros****************directorios***********"
	echo " ` find $1 -type f | wc -l`  |  `find $1 -type d | wc -l`" 
	else
		echo "El directorio $1 no es un directorio"
	fi


