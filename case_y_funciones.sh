#!/bin/bash

# Uso:
## Como he puesto un case $1 in, he representado que si se escribe algo despúes del archivo, ejemplo:
### ./archivo.sh loquesea
### Esto tome la acción a continuación
### Se puede usar una función creada como la de "repite" (que la funcion no tenga nombre de un comando bash existente)
### Ó, poner lo que quieras que haga
############## Ejemplo ##############
# 'loquesea')                       #
#             echo "Sí, lo que sea" #
# ;;                                #
#####################################
# También se puede agregar un case $2 in representando lo que irá despúes de poner el nombre de archivo
# Ejemplo:
# ./archivo.sh primer_parametro segundo_parametro

repite() {
	    echo "hola"
	  }

expresion() {
	    expr 5 \* 5
	  }

desc() {
	    wget http://google.com/index.html
	  }

request() {
	    curl -s google.com
	  }

case $1 in

  'echo')
        repite
  ;;

  'expr')
        expresion
  ;;

  'wget')
        desc
  ;;

  'curl')
        request
  ;;

esac
