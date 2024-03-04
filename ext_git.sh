#!/bin/bash
if [ $# -eq "0" ]; then
	echo "Introdusca un parametro"
fi
if [ -d $1 ]; then
	caca=$(ls -la $1 | grep -E ".git")
	if [ -z "$caca" ]; then
		echo "El git no esta activo"
	else
		echo "EL git esta activo"
	fi
else
	echo "No es un directorio"
fi
