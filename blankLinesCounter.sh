#!/bin/bash
echo "Usted a ingresado a blankLinesCounter"
sleep 1
echo "blankLinesCounter es un contador de lineas en blanco"
sleep 1
echo "Debe ingresar el nombre del archivo de texto que quiere analizar o (Q / q) para volver al menu"
while :
do
read ARCHI
if [[ $ARCHI == "Q" || $ARCHI == "q" ]]
then
echo "Regresando al menu principal..."
sleep 1
echo "Usted a vuelto al menu principal"
sleep 1
break

elif [ -e $ARCHI.txt ]
then
CANT=$(grep  -c '^$' $ARCHI.txt)
echo "Analizando espere por favor..."
sleep 2
echo "Hay $CANT lineas en blanco en el texto analizado"
sleep 1
echo "Desea seguir usando blankLinesCounter para analizar otro texto? si / no"
read RESP
case $RESP in
[Ss] | [Ss][iI]) echo "Debe ingresar el nombre del archivo de texto que quiere analizar o (Q / q) para volver al menu"
 continue ;;
[Nn] | [Nn][oO]) echo "Regresando al menu principal..."
sleep 1
echo "Usted a vuelto al menu principal"
sleep 1
break
esac
else
echo "Debe ingresar el nombre del archivo de texto que quiere analizar o (Q / q) para volver al menu"
fi
done

