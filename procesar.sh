#!/bin/bash
#Se deberán recortar las imágenes a una resolución de 512*512
#con alguna utilidad como imagemagick. Solamente deben procesarse aque-
#llas imágenes que tengan nombrs de personas. Entiéndase por nombres de
#personas a cualquier combinación de palabras que empiecen con mayúsculas
#y sigan por minúsculas.
 

dir_proc=$1
cd $1
for i in $(ls *); do 
var=${i%.*}
if [[ $var =~ [A-Z][a-z]+ ]]; then
	convert $i -gravity center -resize 512x512+0+0 \
-extent 512x512 cut_$i
	echo "Imagen Cortada cut_$i"
else
	echo "la imagen no contiene un nombre valido de persona"
fi
done 
