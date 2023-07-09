#!/bin/bash
#Genera imágenes utilizando algún servicios web. Se debe
#poder indicar por argumento cuantas imagenes generar y se deben asignar
#nombres de archivo al azar de una lista de nombres de personas. Tener
#en cuenta que al descargar de una página conviene usar un sleep entre
#descarga y descarga para no saturar el servicio y evitar problemas. Luego
#se deben comprimir las imágenes, y generar un archivo con su suma de
#verificación.

arg_1=$1

  
#
#

nombres="https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv"
imagenes="https://source.unsplash.com/random/900%C3%97700/?person"



wget $imagenes -O imagen1.jpeg
wget $nombres -O dict.csv 

lista=$(wc -l dict.csv)
#num_random=$(($RANDOM % $lista))
#nombre_random=(sed '$num_randomq;d' dict.csv)

for i in range($arg_1); do
       num_random=$(($RANDOM % $lista))
       nombre_random=(sed '$num_randomq;d' dict.csv)
       wget $imagenes -O $nombre_random.jpeg
       sleep 1 
done 



#mv imagen1.jpeg $nuevo_nombre.jpg
