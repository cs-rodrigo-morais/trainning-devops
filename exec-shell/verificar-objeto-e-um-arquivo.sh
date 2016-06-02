#!/bin/bash
#####################################################################
# Program:
# Description:
# Verificar se o objeto é um arquivo
# Author: Rodrigo Morais <rodrigo.morais@concretesolutions.com.br>
#####################################################################
# Verifica se existe o argumento não importando ser arquivo ou diretório
if [ -e $HOME ]; then
	echo "O objeto existe. Veremos se é objeto ou diretório"
# aninhando o if
# com a opção abaixo checa se o arquivo existe e se é um arquivo
	if [ -f $HOME ]; then
		echo "é um ARQUIVO"
	else
		echo "OBJETO não encontrado"
	fi
else
# caso o primeiro if tivesse com saída 1 a mensagem abaixo seria invocada
	echo "Objeto não encontrado"
fi
