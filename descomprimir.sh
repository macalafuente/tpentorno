!#/bin/bash
#Descarga un archivo comprimido de imágenes. De debe
#poder indicar por argumento dos archivos (uno con las imágenes y otro
#con una suma de verificación). Si ocurrió algún error se debe informar al
#usuario de lo contrario se procede a descomprimir.

imag_comprimidas=$1 
suma_verificacion=$2

#Tiene que ver con la salida de error que echo $? ???

if $imag_comprimidas -eq *.gz|*.bz2;
     #descomprime tar xvf <mi_dir.tar> 
else: 
       echo "mensaje error"  	
	
