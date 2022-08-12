#!/bin/bash
echo "Usted a ingresado a findNames"
sleep 1
echo "findNames es un buscador de nombres (Toda palabra que empiece con mayuscula)"
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
echo "Analizando espere por favor..."
sleep 2
echo "--A continuacion se listaran los nombres que se hallaron dentro del texto--"
sleep 1
for i in $(<$ARCHI.txt)
do
sleep 0.01
echo $i | grep ^[A-Z]
done
sleep 1
echo "Desea seguir usando findNames para buscar nombres en otro texto? si / no"
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

