#!/bin/bash

contrasena() {
var=false
  for c in ${!contrasenas[@]}; do
  if [ "$pass" = "${contrasenas[$c]}" ]; then
    var=true
  fi
  done
echo $var
}

azul='\e[0;34m'
verde='\e[0;32m'
rojo='\e[0;31m'
reset='\e[0m'


declare -a contrasenas
contrasenas=(
  "123"
  "1234"
  "123456"
  "test"
  "test2"
      )


clear
echo -e 'Este es un test de arrays password\nA continuación, escribe la contraseña\n'
read pass
contrasena=$(contrasena)
if [ "$contrasena" == true ]; then
  echo -e $verde'Contraseña correcta'$reset
  sleep 0.8s
  clear
  bash script.sh 123456789456123 # Diremos que la contraseña puede ser "123456789456123"
else
  echo -e $rojo'Contraseña incorrecta'$reset
fi
