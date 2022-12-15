#!/bin/bash
#  Realizar un script que imprima los números 5,4,3,2,1 usando un bucle while

cont=5
while [[ $cont -ne 0 ]]
do
	echo $cont
	((cont--))
done	


