#!/bin/bash
echo "Usted a ingresado a statsSentences"
sleep 1
echo "statsSentences es un indicador estadístico de longitud de oraciones"
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
oraciones=$(tr -c [A-Za-z,' '] '\n' < $ARCHI.txt | tr -c '[:alnum:]\n' '\b')
largo=0
for oracion in $oraciones
do
    caracteres=${#oracion}
    if (( caracteres > largo ))
    then
        largo=$caracteres
        oracion_mas_larga=$oracion
    fi
done
echo "Analizando espere por favor..."
sleep 2
echo "La oracion mas larga del texto es \"$oracion_mas_larga\" y contiene $largo caracteres"
set `tr -c [A-Za-z,' '] '\n' < $ARCHI.txt | tr -c '[:alnum:]\n' '\b'`
oracion_mas_corta=$1
Caracteres=${#oracion_mas_corta}
for oracion in $oraciones
do
    siguiente_oracion=${#oracion}
    if (( Caracteres >= siguiente_oracion ))
    then
        Caracteres=$siguiente_oracion
        oracion_mas_corta=$oracion
    else
        Caracteres=${#oracion_mas_corta}
        oracion_mas_corta=$oracion_mas_corta
    fi
done
echo "La oracion mas corta del texto es \" $oracion_mas_corta\" y contiene $Caracteres caracteres"
cantP=$(tr -c [A-Za-z,' '] '\n' < texto.txt | wc -w)
cantO=$(tr -c [A-Za-z,' '] '\n' < texto.txt | wc -l)
echo "Su texto contiene $cantP palabras y $cantO oraciones en total, con un promedio de longitud de oracion por $(( $cantP / $cantO )) palabras"
sleep 1
echo "Desea seguir usando statsWords para analizar otro texto? si / no"
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

