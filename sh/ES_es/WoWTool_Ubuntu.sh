#!/bin/bash

##
# Copyright 2015 Sayghteight


                echo "##########################################################"
                echo "##                                                      ##"
                echo "##     AutoInstalador Componentes World of Warcraft     ##"
                echo "##                     server                           ##"
                echo "##########################################################"
                echo "By Sayghteight"
                echo "version for GNU/Linux by badanni"
                echo .
                echo .
                echo .
                echo "Los siguientes pasos que realizara nuestro autoinstaler"
                echo "Es el instalar todo lo necesarío para que tenga su servidor funcional"
                echo .
                echo .
                echo .
                echo .

function menu()
{

    echo "Selecciona una opcion:"

    echo

    echo "1) Instalación de un entorno LAMP (Apache2, PHP, Mysql y soporte para fusióncms)"

    echo "2) Instalación de un entorno de desarrollo (Herramientas) [Sin Ace]"

    echo "3) Instalación de un entorno de desarrollo (Herramientas) [Con Ace]"
	
    echo "4) Instalación de un entorno de core [4.3.4 (V9)]"

    echo "5) Instalación de un entorno de core [6.x]"
	
    echo "6) Instalación de un entorno de core [4.3.4 (TC)]"

    echo

    echo "7) Salir"

    echo

    echo -n "Indica una opcion: "

}



function repository_cataclysm_v9(){


echo "Español : Este repositorio esta temporalmente desactivado."

}


function repository_cataclysm_tc()
{

echo "Español : Se esta procediendo a ejecutar los comandos para instalar su emulador."
if [ -w repository/cata_434_tc.sh ]
then
  echo "Si, Tu tienes permisos de lectura y escritura"
   sudo ./repository/cata_434_tc.sh
else
  echo "No, tienes permisos para leer/escribir."
  
  sudo chmod 777 /repository/cata_434_tc.sh
   sudo ./repository/cata_434_tc.sh
fi


}


function repository_6x()
{

echo "Español : Se esta procediendo a ejecutar los comandos para instalar su emulador."

if [ -w repository/wod_6x.sh ]
then
  echo "Si, Tu tienes permisos de lectura y escritura"
   sudo ./repository/wod_6x.sh
else
  echo "No, tienes permisos para leer/escribir."
  
  sudo chmod 777 /repository/wod_6x.sh
   sudo ./repository/wod_6x.sh
fi

}

# opcion por defecto

opc="0"

 

# bucle mientas la opcion indicada sea diferente de 9 (salir)

until [ "$opc" -eq "9" ];

do

    case $opc in

        1)
		
			sudo apt-get -y update
            sudo apt-get -y install apache2
			sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql
			sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt php5-common php5-cgi php5-curl
			sudo mysql_install_db
			sudo mysql_secure_installation
			menu
			;;

        2)

			sudo apt-get -y update
			sudo apt-get install -y build-essential autoconf libtool gcc g++ make cmake git-core wget p7zip-full libncurses5-dev zlib1g-dev libbz2-dev openssl libssl-dev mysql-server mysql-client libmysqlclient-dev libmysql++-dev libreadline6-dev libboost-dev libboost-thread-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-iostreams-dev libzmq-dev
			sudo apt-get install libzmq-dev
			menu
            ;;

        3)

			sudo apt-get -y update
			sudo apt-get install -y build-essential autoconf libtool gcc g++ make cmake git-core wget p7zip-full libncurses5-dev zlib1g-dev libbz2-dev openssl libssl-dev mysql-server mysql-client libmysqlclient-dev libmysql++-dev libreadline6-dev libboost-dev libboost-thread-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-iostreams-dev libzmq-dev
			sudo apt-get install libzmq-dev
			sudo wget http://download.dre.vanderbilt.edu/previous_versions/ACE-6.0.0.tar.gz
			sudo tar xvzf ACE-6.0.0.tar.gz
			cd ACE_wrappers/
			sudo mkdir build
			cd build
			sudo ../configure --disable-ssl
			sudo make
			sudo make install
			menu
			;;

        4)
            repository_cataclysm_v9
			menu

			
			;;
        5)
            repository_6x
			;;
			
		
		 6)
			repository_cataclysm_tc
			;;
		
         7)


		   exit

;;

	     *)
		 
			menu
		 ;;
    esac

    read opc

done
