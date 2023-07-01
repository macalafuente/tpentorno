#!/bin/bash
#Descarga un archivo comprimido de imágenes. De debe
#poder indicar por argumento dos archivos (uno con las imágenes y otro
#con una suma de verificación). Si ocurrió algún error se debe informar al
#usuario de lo contrario se procede a descomprimir.

imag_comp=$1 
suma_verif=$2

#Tiene que ver con la salida de error que echo $? ???

verif=$(md5sum $1 | cut -d ' ' -f 1 )

if [[ $verif  == $suma_verif ]]; then
       tar xvf $imag_comp
else
	echo "No se puede descomprimir. No coinciden las sumas de verificaciòn"
fi	
 
 
  	

 

