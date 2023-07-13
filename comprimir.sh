#!/bin/bash
#comprimir.sh: Finalmente, luego de procesadas las imágenes, se debe:
#– generar un archivo con la lista de nombres de todas las imágenes.
#– generar un archivo con la lista de nombres válidos.
#– generar un archivo con el total de personas cuyo nombre finaliza con
#la letra a.
#– por último, generar un archivo comprimido que incluya los archivos
#generados en los items anteriores y todas las imágenes. El archivo
#comprimido debe poder accederse desde fuera del contenedor.

#GENERAR UN ARCHIVO CON LA LISTA DE NOMBRES DE TODAS LAS IMAGENES

cd $1


for f in $(ls *.jpeg); do
  echo ${f%.*} >> nom_imag.txt

  if [[ ${f%.*}  =~ ^[A-Z][a-z]+ ]]; then
    echo ${f%.*} >> nom_val_imag.txt
  fi
 
  if [[ ${f%.*} =~ [aA]$ ]]; then
    echo ${f%.*} >> nom_A_imag.txt
  fi

done

#COMPRIMIR
cd ../
tar zcvf comprimido.tar.gz dir_imagenes 
