#!/bin/bash
echo "Usted a ingresado a statsUsageWords"
sleep 1
echo "statsUsageWords listara las 10 palabras (de cuatro caracteres) mas usadas en tu texto"
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
echo "--A continuacion se listaran las 10 palabras mas utilizadas que se hallaron en tu texto--"
sleep 1
#COMENTARIO= tr -c (la opcion complemento busca los caracteres que se encuentran en [A-Za-z], y el \n genera un salto de linea.
#el grep filtra las palabras de 4 caracteres 
#el primer sort las ordena alfabeticamente
#el uniq -c  cuenta la cantidad de veces que se repite una palabra 
#el sort -nr las ordena de mayor a menor segun la cantidad de veces que se repite 
#el head muestra las primeras 10
echo | tr -c '[A-Za-z]' '[\n*]' <$ARCHI.txt | grep -iwE [a-z]{4} | sort | uniq -c | sort -nr | head  -10
sleep 1
echo "Desea seguir usando statsUsageWords para buscar palabras en otro texto? si / no"
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


