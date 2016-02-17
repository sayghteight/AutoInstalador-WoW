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
			sudo mkdir TC_434s
			sudo mkdir TCCore_434srv
			sudo git clone https://gitlab.com/trinitycore/TrinityCore_434.git TC_434s
			cd TC_434s/
			sudo mkdir build
			cd build
			echo "Se esta procediendo a ejecutar el cmake por defecto"
			sudo cmake ../ -DCMAKE_INSTALL_PREFIX=/home/TCCore_434srv -DWITH_WARNINGS=0 -DTOOLS=0
			echo "Si el CMAKE se ejecuto sin problemas, no cancele la instalación. Si no cancele con Ctrl+C"
			sleep 2
			echo "Ejecutando Make a 3 cores"
			sudo make -j3
			echo "Make realizado ... instalando"
			sudo make install 