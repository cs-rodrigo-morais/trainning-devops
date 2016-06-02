#!/bin/bash
#####################################################################
# Program:
# Description:
# Verificar se a variável possui conteúdo
# Author: Rodrigo Morais <rodrigo.morais@concretesolutions.com.br>
#####################################################################
var1=tapioca
var2=''
# com o parâmetro -n abaixo pergunta se a variável criada possui algo dentro dela
if [ -n $var1 ]; then
	echo "utilizando a opção -n + variável"
	echo "A variavel não está vazia, contém o valor $var1"
	else
	echo "A variável está vazia"
fi
# com o parâmetro abaixo verifica se a variável está vazia, ou seja, sem nada.
if [ -z $var2 ]; then
	echo "utilizando a opção -z + variável"
	echo "Variável está VAZIA"
	# caso no primeiro if
else
	echo "variável não está VAZIA"
fi
