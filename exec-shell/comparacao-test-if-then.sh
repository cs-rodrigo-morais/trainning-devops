#!/bin/bash
#####################################################################
# Program:
# Description:
# comparação numérica com test e if-then
# Author: Rodrigo Morais <rodrigo.morais@concretesolutions.com.br>
#####################################################################
#var1=7
#var2=7
# declarado duas váriáveis
var1=20
var2=35
# se o conteudo da var1 for maior que 8 exibe a informação (-gt  É maior que (GreaterThan))
if [ $var1 -gt 8 ]; then
	echo "A variável do valor em $var1 é maior que 8"
fi
# utilizando a opção -eq ()É igual (EQual)) os valores das variáveis tem que ser iguais exibindo a mensagem abaixo
if [ $var1 -eq $var2 ]; then
	echo "Os valores são iguais"
else
	echo "Os valores são diferentes"
fi
