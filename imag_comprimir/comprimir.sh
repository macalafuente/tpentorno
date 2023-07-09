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
arg1=$1
mkdir -p imag_comprimir


for f in $(ls *); do
${f%.*} >> nom_imag.txt
cp $f imag_comprimir 
done

#GEnerar un archivo con la lista de nombres validos

for i in $(ls *); do
if [[ ${f%.*}  =~ [A-Z][a-z]+ ]]; then
	${f%.*} >> nom_val_imag.txt
fi
#generar archivo con  total de personas que el nombre finaliza con la letra
#A

#contador=0
for f in $(ls *); do
if [[ ${f%.*} =~ *a ]]; then
${f%.*} >> nom_A_imag.txt
#$contador+=1 #Como agregar nums a contador?
fi
done

 #COMPRIMIR

 mv nom_imag.txt imag_comprimir
 mv nom_val_imag.txt imag_comprimir
 mv nom_A_imag.txt imag_comprimir

tar zcvf comprimido.tar.gz imag_comprimir 
