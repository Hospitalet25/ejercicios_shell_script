#!/bin/bash
#  Realizar un script que imprima los números 5,4,3,2,1 usando un bucle while

cont=0
while [[ $cont -le 10 ]]
do	
   	((mult=$1 * $cont))	
	echo "$1 * $cont = $mult"
	((cont++))
done	


