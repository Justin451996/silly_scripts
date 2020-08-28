#!/bin/bash

# renombrar archivo, evitando espacios en blanco
for fichero in *
do
	if [[ $fichero != 'script_upload.sh' ]];
	then
		mv "$fichero" "${fichero// /_}"
	fi
done

# cargar archivo mediante scp
for fichero in *
do
	if [[ $fichero != 'script_upload.sh' ]];
	then
		scp $fichero user@host:/direccion/en/host/
	fi
done
