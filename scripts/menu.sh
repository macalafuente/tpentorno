#!bin/bash

PS3='Elija>'

echo "Elija operacion a realizar sobre las imagenes:" 
select operacion in "salir" "generar" "descomprimir" "procesar" "comprimir"
do 

  [ -e $operacion ] && echo "Elegir entre opcion valida!" && continue 
  [ $REPLY == 1 ] && echo "Hasta luego" && break 
  echo "Opcion Elegida:" $operacion
  echo "Ingrese argumentos" 
  read RESP 
  bash scripts/$operacion.sh $RESP 

done

