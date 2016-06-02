#!/bin/bash
#####################################################################
# Program:
# Description:
# Comparação de arquivo
# Author: Rodrigo Morais <rodrigo.morais@concretesolutions.com.br>
#####################################################################
# verificar se o diretório home existe mostrando seu conteudo
# utilizando o test -d verificará se é um DIRETÓRIO
if [ -d $HOME ]; then
	echo "Diretório HOME encontrado"
	cd $HOME
	# fará a listagem apenas dos diretórios
	ls -lart | grep ^d
# caso não seja um diretório a mensagem abaixo será informada
else
	echo "Diretório NÃO encontrado"
fi
