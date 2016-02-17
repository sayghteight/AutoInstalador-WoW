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