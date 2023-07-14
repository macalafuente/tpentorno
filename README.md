# TP ENTORNO DE PROGRAMACION

## Integrantes:
### Maria Sol Aranda
### Solange Moreyra
### Macarena Lafuente 

## Instrucciones para correr el contenedor alojado en este repositorio: 

## 1) Primero construir la imagen de Docker relativa al contenedor del trabajo:### Comando: docker build . -t tpentorno

## 2) Correr la imagen creada de modo interactivo para poder acceder al menu: 
### Comando: docker run -it -v ./datasets:/app/datasets tpentorno 

## 3) El menu mostrara las diferentes opciones de scripts a ejecutar (Deben ejecutarse en el orden planteado para su correcto funcionamiento)
### 1º generar
### 2º descomprimir
### 3º procesar
### 4º comprimir 

## 4) Para cada script se pedira el ingreso de argumentos para la ejecucion. Deberan ingresar los siguientes argumentos:
### Para "generar": La cantidad de imagenes a generar (Un numero)
### Para "descomprimir": imagenes.tar.gz imagenes.md5 (Archivo de imagenes comprimidas y suma de verificacion) 
### Para "procesar": dir_imagenes (Carpeta de imagenes a procesar) 
### Para "comprimir": dir_imagenes (Carpeta de imagenes a comprimir) 

## 5) Por ultimo, ingresar "1" para salir del menu. 

