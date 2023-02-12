#!/bin/bash

# Credits
echo "Dieses Skript wurde von vDroPZz erstellt."
echo "Github-Link: https://github.com/DroPZsec"

# Menü für Netzwerkfunktionen
echo "Wählen Sie eine Netzwerkfunktion:"
echo "1) Ping"
echo "2) Traceroute"
echo "3) nslookup"
echo "4) netstat"
echo "5) ifconfig"
echo "6) ipconfig"
echo "7) tcpdump"
echo "8) dig"
echo "9) host"
echo "10) whois"
echo "11) curl"
echo "12) nmap"
echo "13) ssh"
echo "14) ftp"
echo "15) scp"
echo "16) netcat"
echo "17) Beenden"

# Auswahl treffen
read -p "Eingabe: " choice

# Funktionen ausführen
case $choice in
  1) # Ping
     read -p "Ziel-IP-Adresse: " ip
     ping $ip
     ;;
  2) # Traceroute
     read -p "Ziel-IP-Adresse: " ip
     traceroute $ip
     ;;
  3) # nslookup
     read -p "Ziel-IP-Adresse oder Hostname: " host
     nslookup $host
     ;;
  4) # netstat
     netstat
     ;;
  5) # ifconfig
     ifconfig
     ;;
  6) # ipconfig
     ipconfig
     ;;
  7) # tcpdump
     read -p "Ziel-Netzwerk-Interface: " interface
     tcpdump -i $interface
     ;;
  8) # dig 
     read -p "Ziel-Hostname oder -IP-Adresse: " host
     dig $host
     ;;
  9) # host 
     read -p "Ziel-Hostname oder -IP-Adresse: " host
     host $host
     ;;
 10) # who is
     read -p "Ziel-Domain oder -IP-Adresse: " domain
     whois $domain
     ;;
 11) # curl 
     read -p "Ziel-URL: " url
     curl $url
     ;;
 12) # nmap 
     read -p "Ziel-IP-Adresse oder Hostname: " host
     nmap $host
     ;;
 13) # ssh 
     read -p "Ziel-Hostname oder -IP-Adresse: " host
     ssh $host
     ;;
 14) # ftp 
     read -p "Ziel-Hostname oder -IP-Adresse: " host
     ftp $host
     ;;
 15) # scp
     read -p "Quelldatei: " source_file
     read -p "Ziel-Hostname oder -IP-Adresse: " host
     read -p "Zielpfad: " destination_path
     scp $source_file $host:$destination_path
     ;;
 16) # netcat
     read -p "Ziel-Hostname oder -IP-Adresse: " host
     read -p "Ziel-Port: " port
     nc $host $port
     ;;
 17) # exit
     echo "Das Skript wurde beendet."
     exit 0
     ;;
  *) # ungültige Eingabe
     echo "Ungültige Eingabe. Bitte wählen Sie eine Nummer von 1 bis 7."
     ;;
esac
/bin/sh