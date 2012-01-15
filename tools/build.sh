#!/bin/bash

# Copyright (C) 2011 The SuperTeam Development Group.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


#Inicializamos las variables
SUBDEVICE=`find device/ -name full_$1.mk -exec grep -G ^PRODUCT_SUBDEVICE {} \;`
DEVICE=${SUBDEVICE:=$1}
echo $DEVICE
SCRIPTDIR=`dirname $0`
. $SCRIPTDIR/entorno.sh

if [ $# -lt 1 ]
then
   msgErr >&2 "Usage: $0 <device>"
   exit 1
fi

while true
do
    #inicializamos estados
    echo "Elige una opción:"
    echo " 1: make"
    echo " 2: squisher"
    echo " 3: sincronizar"
    echo " 4: crear parche"
    echo " 5: make + squisher + sincronizar"
    echo " 6: limpiar build"
    echo " 7: Reiniciar dispositivo"
    echo " 8: Compilar kernel"
    echo "99: salir"

    read option
    
    if [ $option -eq 99 ]; then
        exit 0
    fi

    if [ -z "$OUT" ]; then
    	. build/envsetup.sh
    	lunch full_$DEVICE-userdebug
        if [ "$?" -ne 0 ]; then
            continue
        fi
    fi
	
    if [ $option -eq 1 ] || [ $option -eq 5 ]; then
        mka -j${CORES} otapackage
        if [ "$?" -eq 0 ]; then
            msgOK "Compilación correcta"
        else
            msgErr "Error en compilación"
            continue
        fi
    fi

    if [ $option -eq 2 ] || [ $option -eq 5 ]; then
    	$SCRIPTDIR/squisher
        if [ "$?" -eq 0 ]; then
            msgOK "Personalización correcta"
        else
            msgErr "Error al ejecutar squisher"
            continue
        fi
    fi
    
    if [ $option -eq 3 ] || [ $option -eq 5 ]; then
    	$SCRIPTDIR/sincronizar.sh $ROMDIR $DEVICE
        if [ "$?" -eq 0 ]; then
            msgOK "Sincronización correcta"
        else
            msgErr "Error al sincronizar"
            continue
        fi
    fi
    
    if [ $option -eq 4 ]; then
        if [ ! -d $PUBLICDIR ]; then
        	msgWarn "No existe un directorio con la versión actualmente publicada. Se crea uno nuevo. La propia ROM es el parche."
            cp -r $BUILDDIR $PUBLICDIR
        else
	    	if [ -d $PATCHDIR ]; then
	            rm -r $PATCHDIR
	        fi
	        mkdir $PATCHDIR
	        msgStatus "Calculando las diferencias con la anterior versión publicada"
	        $SCRIPTDIR/sacadiff.sh $BUILDDIR $PUBLICDIR $ROMDIR/public.diff.txt
            $SCRIPTDIR/fromdiff.sh $ROMDIR/public.diff.txt $PATCHDIR patch
            $SCRIPTDIR/updater.sh $DEVICE
	    fi        
    fi    	
    
    if [ $option -eq 6 ]; then
    	make clean
    fi
    
    if [ $option -eq 7 ]; then
    	adb reboot	
    fi
    
    if [ $option -eq 8 ]; then
    	$SCRIPTDIR/kernel.sh $DEVICE
    fi
    
done
	
