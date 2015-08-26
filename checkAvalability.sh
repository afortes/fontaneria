#!/bin/bash
######################################################################################
#Script que comprueba la disponibilidad de la conexion a una cierta ip y puerto 22
######################################################################################

##################### Instalaciones previas para usar  comando mail con gmail ##################
#sudo apt-get install ssmtp
#sudo apt-get install mailutils

#sudo nano /etc/ssmtp/ssmtp.conf
#Agregar al final del fichero de configuracion anterior lo siguiente al final:
#AuthUser=tucorreo@gmail.com
#AuthPass=tucontraseña
#FromLineOverride=YES
#mailhub=smtp.gmail.com:587
#UseSTARTTLS=YES

#para enviar:
#echo "texto a teclear" | mail -s "Asunto" usuario@gmail.com



HOST=10.95.83.89


nc -w 5 $HOST 22
if [ $? -eq 0 ]; then
	echo "Test de conexión positivo realizado a $HOST" | mail -s "Existe conexion a $HOST" alexandrofortessilva@gmail.com
else
	echo "Nada de nada"
fi