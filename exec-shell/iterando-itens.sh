#!/bin/bash
#####################################################################
# Program:
# Description:
# iterando por todos os itens de um diretório
# Author: Rodrigo Morais <rodrigo.morais@concretesolutions.com.br>
#####################################################################
for item in /home/rmorais/*
do
	# Verifica se existe e se é um diretório
	if [ -d "$item" ]
	then
		echo "O item $item é um diretório"
	# Verifica se existe e é um arquivo
	elif [ -f "$item" ]
	then
		echo "O item $item é um arquivo"
	fi
done
