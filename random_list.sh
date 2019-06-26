#!/bin/bash
#
# Random Music List
#
# Author: Pablo M.
# Email: pmopa@pm.me
#
# Version: 0.5
###########################################################


# Calculamos el numero de ficheros
i=0

for file in *.mp3; do
  ((i++))
done

range=$i

# Iniciamos el contador 
# Generamos el primer numero aleatorio
# Iniciamos el array
j=0
number="$((($RANDOM % $range) + 1))"

declare -a narr


# Hacemos un bucle en el que almacenamos los numeros aleatorios
# generados en el array. Comprobamos que no esten repetidos
# y añadimos el numero generado al principio del nombre del fihero
for file in *.mp3; do
  narr[$j]=$number
  mv "$file" "$number-$file"

  # Comprobacion de que este repetido el numero
  while [[ ${narr[*]} =~ $number ]]; do
    
    number="$(($RANDOM % $range))"
 
    # Paramos el bucle en caso de haber llegado el limite 
    if [[ ${#narr[@]} == $range ]]; then
      break
    fi
  done

  ((j++))

done


# Vemos el contenido del array
#echo ${narr[*]}

# Comprobar longitud del array
#echo ${#narr[@]}
