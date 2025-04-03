#!/bin/bash
function generarParticiones(){
  tipo=$(echo -e "p" | fdisk /dev/sdb | grep "Tipo de etiqueta" | awk '{print $NF}'
  )
  if [[ $tipo == "gpt" ]]; then
    echo -e "g\nw" | fdisk /dev/sdb
    for ((i=1;i<=128;i+=1))
    do
      echo -e "n\n$i\n\n+1K\nw" | fdisk /dev/sdb 2> /dev/null
    done
  else
    echo -e "g\nw" | fdisk /dev/sdb
    for ((i=1;i<=1;i+=1));do
      echo -e "n\n$i\n\n+1K\nw" | fdisk /dev/sdb 2> /dev/null
    done
  fi
}
