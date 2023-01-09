#!/bin/bash
#  Realizar un script utilizando la estructura el bucle for que muestre el siguiente patrón:
if [[ $# -eq 2 ]]; then
		# Te obliga a introducir los 2 parámetros

		if [[ -f $1 ]]; then
			# Comprueba que el primer parámetro exista

			if [[ ! -f $2 ]]; then
				# Comprueba que el parámetro aún no exista

				cp $1 $2

			else

				echo " $2 ya esta creado, introduce un parámetro que aún no exsita"

			fi

		else

			echo " $1 no existe, introduce un parámetro que exista "

		fi

	else

		echo " Se deben introducir correctamente los 2 parámetros "

	fi
