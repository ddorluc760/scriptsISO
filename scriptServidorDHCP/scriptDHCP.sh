#!/bin/bash
function anadir_reserva(){
  read -p "Introduzca el nombre del equipo: " nombre
  read -p "Introduzca la MAC de tu equipo: " dirMAC
  read -p "Introduzca la IP de tu equipo: " dirIP
  echo -e "Nombre: $nombre; \nMAC: $dirMAC; \nIP: $dirIP;"
  echo -e "host $nombre{" | sudo tee -a /etc/dhcp/dhcpd.conf > /dev/null
  echo -e "  hardware ethernet $dirMAC" | sudo tee -a /etc/dhcp/dhcpd.conf > >
  echo -e "  fixed-address $dirIP" | sudo tee -a /etc/dhcp/dhcpd.conf > /dev/>
  echo -e "}" | sudo tee -a /etc/dhcp/dhcpd.conf > /dev/null
}
