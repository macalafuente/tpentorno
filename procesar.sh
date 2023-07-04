#!/bin/bash
#Se deberán recortar las imágenes a una resolución de 512*512
#con alguna utilidad como imagemagick. Solamente deben procesarse aque-
#llas imágenes que tengan nombres de personas. Entiéndase por nombres de
#personas a cualquier combinación de palabras que empiecen con mayúsculas
#y sigan por minúsculas.

sudo apt get install imagemagick

imag_proc=$1
var=${imag_proc%.*}
if [[ $var =~ [A-Z][a-z]+ ]]; then
	convert $1 -gravity center -resize 512x512+0+0 extent 512x512 cut_$1
else
	echo "la imagen no contiene un nombre valido de persona"
fi

