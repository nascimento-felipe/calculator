#!/bin/bash

# arquivo pra testes e aprender a fazer um jogo

operacao=0

echo "Vai repetir enquanto for diferente de -1"

while [[ $i != -1 ]]; do

	echo "
	 ----------------------
	| Calculadora em shell |
	|                      |
	| Opções:              |
	| 1. Soma              |
	| 2. Subtração         |
	| 3. Multiplicação     |
	| 4. Divisão           |
	|-1. Sair              |
	 ----------------------
	"
	echo -n "Operação: "
	read operacao

	case $operacao in 
		1) # soma 

		n1=0

		n2=0

		echo "
		 ------
		| Soma |
		 ------
		"

		echo -n "n1: "
		read n1

		echo -n "n2: "
		read n2

		soma=$(( n1 + n2 ))

		echo "O resultado da soma é $soma"
		;;
		
		2) # Subtração

		n1=0
		n2=0

		echo "
         -----------
        | Subtração |
         -----------
        "

        echo -n "n1: "
		read n1

		echo -n "n2: "
		read n2

		sub=$(( n1 - n2 ))

		echo -n "O resultado da subtração é $sub"
		;;

		3) # Multiplicação
		
		n1=0
		n2=0

		echo "
		 ---------------
		| Multiplicação |
		 ---------------
		"

		echo -n "n1: "
		read n1

		echo -n "n2: "
		read n2

		mul=$(( n1 * n2 ))

		echo -n "O resultado da multiplicação é $mul"

		;;

		4)
		
		n1=0
		n2=0

		echo "
         ---------
        | Divisão |
         ---------
		"

		echo -n "n1: "
		read n1

		echo -n "n2: "
		read n2

		if [ $n2 -eq 0 ]

		then
			echo "Não é possível realizar uma operação com 0 de denominador!"
			exit 1
		fi

		div=$(( n1 / n2 ))

		echo -n "o resultado da divisão é $div"
		;;

		-1)
		echo "
		 -------------
		| Até mais :) |
		 -------------
		 "

		 exit 0
		;;

		*)
		echo "
		Opção inválida, tente novamente!
		"
		;;
esac

done