#!/bin/bash
#Descarga un archivo comprimido de imágenes. De debe
#poder indicar por argumento dos archivos (uno con las imágenes y otro
#con una suma de verificación). Si ocurrió algún error se debe informar al
#usuario de lo contrario se procede a descomprimir.

imag_comp=$1 
suma_verif=$2


verif=$(md5sum $1 | cut -d ' ' -f 1 )
echo $verif

verif_sm=$(cat $2 | cut -d ' ' -f 1 )
echo $verif_sm

if [[ $verif  == $verif_sm ]]; then
       echo "Archivo descomprimido"
       tar xvf $imag_comp

else
	echo "No se puede descomprimir. No coinciden las sumas de verificaciòn"
fi	
