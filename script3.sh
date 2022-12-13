#!/bin/bash
if [[ $# -ne 2 ]]; then
	echo "Se deben proporcionar 2 parametros"
	echo "Este se pone asi : "./script3.sh "parametro" "parametro"""
fi
op1=$1
op2=$2
z=$(echo $op1 + $op2 | bc );
	echo $z
	
