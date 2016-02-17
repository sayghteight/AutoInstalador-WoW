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

				
				
function require_ubuntu_en()
{


echo "Se esta trabajando en el lenguaje ingles, por lo cúal esta deshabilitada."

}


function require_ubuntu_es()
{

	if [ -w sh/EN_en/WoWTool_ubuntu.sh ]
then
  echo "Si, Tu tienes permisos de lectura y escritura"
   sudo ./sh/EN_en/WoWTool_Ubuntu.sh
else
  echo "No, tienes permisos para leer/escribir."
  
  sudo chmod 777 /sh/EN_en/WoWTool_ubuntu.sh
   sudo ./sh/EN_en/WoWTool_Ubuntu.sh
fi

}

function require_linux_es()
{

echo "Se esta trabajando en CentOS, por lo cúal esta deshabilitada."
menu_autoinstaller
}

function require_linux_en()
{

echo "We are working on CentOS, so it is disabled."
menu_autoinstaller
}

function menu_autoinstaller()
{

    echo "Selecciona una opcion:"

    echo

    echo "1) Update AutoInstaller WoW Tool (Git)"

    echo "2) Launch AutoInstaller WoW Tool (Ubuntu) {Spanish}"

    echo "3) Launch AutoInstaller WoW Tool (Ubuntu) {English}"
	
    echo "4) Launch AutoInstaller WoW Tool (CentOS) {Spanish}"
	
    echo "5) Launch AutoInstaller WoW Tool (CentOS) {English}"
	
    echo

    echo "7) Salir"

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
			echo "Español : Se esta actualizando el repositorio a la última version disponible";
			echo "English : It is updating the repository to the latest version available";
			sudo git pull
			;;

        2)

			require_ubuntu_es
			
            ;;

        3)
		
			require_ubuntu_en
			;;
			
			
		4)
			require_linux_es
			;;
		5)
		
			require_linux_en
			;;
		
         7)


		   exit

;;

	     *)
		 
			menu_autoinstaller
		 ;;
    esac

    read opc

done