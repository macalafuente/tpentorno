# TP ENTORNO DE PROGRAMACIÓN

## Integrantes:
#### Aranda, Maria Sol
#### Lafuente, Macarena 
#### Moreyra, Solange 


## Instrucciones para correr el contenedor alojado en este repositorio: 

### 1) Primero construir la imagen de Docker relativa al contenedor del trabajo
#### Comando: docker build . -t tpentorno

### 2) Correr la imagen creada de modo interactivo para poder acceder al menú: 
#### Comando: docker run -it -v datasets:/app/datasets tpentorno 

### 3) El menú mostrara las diferentes opciones de scripts a ejecutar (Deben ejecutarse en el orden planteado para su correcto funcionamiento)
#### 1º generar
#### 2º descomprimir
#### 3º procesar
#### 4º comprimir 

### 4) Para cada script se pedirá el ingreso de argumentos para la ejecución. Deberán ingresar los siguientes argumentos:
#### Para "generar": La cantidad de imagenes a generar (Un número)
#### Para "descomprimir": imagenes.tar.gz imagenes.md5 (Archivo de imagenes comprimidas y suma de verificación) 
#### Para "procesar": dir_imagenes (Carpeta de imagenes a procesar) 
#### Para "comprimir": dir_imagenes (Carpeta de imagenes a comprimir) 

### 5) Por último, ingresar "1" para salir del menú. 

