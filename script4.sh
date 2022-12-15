#!/bin/bash
# Realiza un script que comprueba si el fichero pasado por parámetro existe y tenemos permisos de lectura. En caso de tener permisos mostraremos el contenido del archivo. 

if [[ -r $1 ]]; then
	cat  $1
fi

