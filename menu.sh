#!/bin/bash

echo "[- Bienvenido al menu -]"
echo "elija una de las siguientes opciones (colocando el numero correspondiente) para analizar su texto"
echo "[-OPCIONES-]: 1)statsWords.sh - 2)statsUsageWords.sh - 3)findNames.sh - 4)statsSentences.sh - 5)blankLinesCounter.sh - (para salir del menu escriba Q / q)"


read VAR1
case $VAR1 in
1) ./statsWords.sh && echo "seleccione otro numero de opcion [1;2;3;4;5] o (Q / q) para salir del menu" ;;
2) ./statsUsageWords.sh && echo "seleccione otro numero de opcion [1;2;3;4;5] o (Q / q) para salir del menu" ;;
3) ./findNames.sh && echo "seleccione otro numero de opcion [1;2;3;4;5] o (Q / q) para salir del menu" ;;
4) ./statsSentences.sh && echo "seleccione otro numero de opcion [1;2;3;4;5] o (Q / q) para salir del menu" ;;
5) ./blankLinesCounter.sh && echo "seleccione otro numero de opcion [1;2;3;4;5] o (Q / q) para salir del menu" ;;
[qQ]) echo "saliste del menu!" && break ;;
*) echo "Debe colocar un numero de opcion [1;2;3;4;5] o (Q / q) para salir del menu";;
esac

