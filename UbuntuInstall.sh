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

				
clear; echo “CARGANDO, ESPERE POR FAVOR”;
echo “”;for (( j=1; j<=3;j++ )); do 
echo -e “Cargando elementos de controlador $j \c” ;for (( i=0; i<=30; i++ ));do 
echo -e “\033[0;34m.\c”;sleep 0.05;done;
echo -e “\c”;
echo -e “\t\033[0;32m[OK]\033[0m";done; echo "\033[0;32mCARGADO CON EXITO\033[0m"
				
				
# Muestra el menu general

_menu()

{

    echo "Selecciona una opcion:"

    echo

    echo "1) Instalación de un entorno LAMP (Apache2, PHP, Mysql y soporte para fusióncms)"

    echo "2) Instalación de un entorno de desarrollo (Herramientas) [Sin Ace]"

    echo "3) Instalación de un entorno de desarrollo (Herramientas) [Con Ace]"
	
    echo "4) Instalación de un entorno de core [4.3.4]"

    echo "5) Instalación de un entorno de core [6.x]"

    echo

    echo "6) Salir"

    echo

    echo -n "Indica una opcion: "

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
			_menu
			;;

        2)

			sudo apt-get -y update
			sudo apt-get install -y build-essential autoconf libtool gcc g++ make cmake git-core wget p7zip-full libncurses5-dev zlib1g-dev libbz2-dev openssl libssl-dev mysql-server mysql-client libmysqlclient-dev libmysql++-dev libreadline6-dev libboost-dev libboost-thread-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-iostreams-dev libzmq-dev
			sudo apt-get install libzmq-dev
			_menu
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
			_menu
			;;

        4)
            cd home/
			sudo mkdir Cata_434s
			sudo mkdir Cata_434srv
			sudo git clone https://github.com/sayghteight/CataclysmV9.git Cata_434s
			cd Cata_434s/
			sudo mkdir build
			cd build
			echo "Se esta procediendo a ejecutar el cmake por defecto"
			sudo cmake ../ -DCMAKE_INSTALL_PREFIX=/home/Cata_434srv -DWITH_WARNINGS=0 -DTOOLS=0
			echo "Si el CMAKE se ejecuto sin problemas, no cancele la instalación. Si no cancele con Ctrl+C"
			sleep 2
			echo "Ejecutando Make a 3 cores"
			sudo make -j3
			echo "Make realizado ... instalando"
			sudo make install 
			_menu
			;;
        5)
            cd home/
			sudo mkdir Wod_6xs
			sudo mkdir Wod_6xsrv
			sudo git clone -b 6.x https://github.com/TrinityCore/TrinityCore.git Wod_6xs
			cd Wod_6xs/
			sudo mkdir build
			cd build
			echo "Se esta procediendo a ejecutar el cmake por defecto"
			sudo cmake ../ -DCMAKE_INSTALL_PREFIX=/home/Wod_6xsrv -DWITH_WARNINGS=0 -DTOOLS=0
			echo "Si el CMAKE se ejecuto sin problemas, no cancele la instalación. Si no cancele con Ctrl+C"
			sleep 2
			echo "Ejecutando Make a 3 cores"
			sudo make -j3
			echo "Make realizado ... instalando"
			sudo make install 
			_menu
			;;
			
		
         6)


			exit

;;

	     *)
		 
			_menu
		 ;;
    esac

    read opc

done