echo elije una opcion [1] Para crear archivos [2] Para crear carpetas 
read input
op=$input
case $op in
  1)
    ruta=/home/danylsti/Escritorio
    echo Escribe el nombre del archivo que deseas crear
    read input 
    touch $ruta/$input.txt
    echo "Deseas Crear otro txt y para si n para no (y/n)"
    read op2
    y=1
    n=2
    while [[ $op2 -eq 1 ]];
    do
      echo Escribe el nombre del archivo que deseas crear
      read input 
      touch $ruta/$input.txt
      echo "Deseas Crear otro txt y para si n para no (y/n)"
      read input
      op2=input
      
    done
  ;;
  2)
    ruta=/home/danylsti/Escritorio
    echo Escribe el nombre de la carpeta que deseas crear
    read input 
    mkdir $ruta/$input
    echo "Deseas Crear otra Carpeta y para si n para no (y/n)"
    read op2
    y=1
    n=2
    while [[ $op2 -eq 1 ]];
    do
      echo Escribe el nombre de la carpeta que deseas crear
      read input 
      touch $ruta/$input.txt
      echo "Deseas Crear otra Carpeta y para si n para no (y/n)"
      read input
      op2=input
    done
  ;;
#...
  *)
    echo Error 5996 Opcion no valida 
  ;;
esac

