#!/bin/bash
#####################################################################
# Program:
# Description:
# Comparação de String
# Author: Rodrigo Morais <rodrigo.morais@concretesolutions.com.br>
#####################################################################
# declarado a variável, se o usuário local de acordo com $USER for igual ao nome da variável
nome=astolfo
if [ $USER=$nome ]
then
	echo "Olá $nome"
fi
