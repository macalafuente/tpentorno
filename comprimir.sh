#!/bin/bash
#Una vez procesadas las imágenes se debe generar un
#archivo con la lista de todas las personas, un total de personas femeninas
#y masculinas; y luego comprimir todo en un solo archivo. Entiéndase por
#persona femenina aquella cuya ultima letra del primer nombre es una letra
#“a”. El archivo generado debe poder accederse fuera del contenedor.

#GENERAR UN ARCHIVO CON LA LISTA DE NOMBRES DE TODAS LAS IMAGENES

touch nombre_archivos.txt

#GEnerar un archivo con la lista de nombres validos

touch nombres_validos.txt

#generar archivo con  total de personas que el nombre finaliza con la letra
#A
touch nombres_con_A.txt
contador=0
for name in $(cat nombres_validos.txt); do
if [[name == *a]]; then
$contador+=1 #Como agregar nums a contador?
fi
done

 $(cat contador) > nombres_con_A.txt

 #COMPRIMIR

 tar #Como descomprimir ? 
