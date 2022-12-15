#!/bin/bash
if [[ -e $1 ]]; then
	echo "El objeto existe existe"
		if [[ -d $1 ]]; then
			echo "Es un directorio"
		elif [[ -f $1 ]]; then 
			echo "Es un archivo regular"
		fi
	
else 
	echo "No existe"
fi

	
