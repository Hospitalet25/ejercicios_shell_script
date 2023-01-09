#!/bin/bash
name=$2
	cut_name="${name:0:1}" ; echo "${cut_name}" > /dev/null

	surname1=$3
	cut_surname1="${surname1:0:2}" ; echo "${cut_surname1}" > /dev/null

	surname2=$4
	cut_surname2="${surname2:0:2}" ; echo "${cut_surname2}" > /dev/null

	if [[ -n $@ ]]; then
    		if [ $# -eq 4 ]; then
        		if [ $1 == alta ]; then

            			grep -q "^alu${cut_surname1}${cut_surname2}${cut_name}" /etc/group ; let x=$?

			# Creamos el grupo del usuario en el caso de que no exista

            			if [[ $x -eq 1 ]]; then

			                `groupadd "alu${cut_surname1}${cut_surname2}${cut_name}"`


            			fi

            			x=0

            			grep -q "alu${cut_surname1}${cut_surname2}${cut_name}" /etc/shadow ; let x=$?


            			if [[ $x -eq 1 ]]; then

            				useradd -m -c "$name $surname1 $surname2" -G "alu${cut_surname1}${cut_surname2}${cut_name}"
					"alu${cut_surname1}${cut_surname2}${cut_name}" > /dev/null

				fi

         		elif [ $1 == baja ]; then

            			userdel "alu${cut_surname1}${cut_surname2}${cut_name}"
	        		groupdel "alu${cut_surname1}${cut_surname2}${cut_name}"

			fi


		fi

    	if [ $# -eq 5 ]; then
        	if [ $1 == alta ]; then

            		x=0

            		grep -q "^$5" /etc/group ; let x=$?

            		if [[ $x -eq 1 ]]; then

             			`groupadd "$5"`

			else

             			echo " El grupo ya existe, por lo tanto no hace falta crearlo. "

			fi

            		x=0

            		grep -q "^$5" /etc/shadow ; let x=$?

			if [[ $x -eq 1 ]]; then

             			useradd -m -c "$name $surname1 $surname2" -G $5 "alu${cut_surname1}${cut_surname2}${cut_name}" > /dev/null

             		else

             			echo " El usuario ya está registrado en el sistema "

			fi

		elif [ $1 == baja ]; then

            		userdel "alu${cut_surname1}${cut_surname2}${cut_name}"
	        	groupdel $5

        	fi

		else

        		echo " Has ejecutado el Script de la siguiente manera:                                                            "
        		echo " ./Script_UT8PExpr_Regulares_3.sh alta/baja name surname1 surname2                                          "
			echo ""
        		echo " Entonces el Sript ha creado al usuario de la siguiente forma  alu${cut_surname1}${cut_surname2}${cut_name} "
        		echo " y lo ha asignado al grupo alu${cut_surname1}${cut_surname2}${cut_name}"
			echo ""
        		echo " Para crear el usuario y asignar lo a un grupo específico al menos tienes que poner estos parámetros        "
        		echo " ./Script_UT8PExpr_Regulares_3.sh alta/baja name surname1 surname2 [group]                                  "

		fi

	else

		echo "has de meter bien los parametros" 	
	fi
