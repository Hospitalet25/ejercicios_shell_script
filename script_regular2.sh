#!/bin/bash
	ls -l $PWD/* | grep "^-......rwx" > archivos_peligrosos.txt
