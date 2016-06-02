#!/bin/bash
#####################################################################
# Program:
# Description:
# Checar se o arquivo existe e verificar permissão de leitura
# Author: Rodrigo Morais <rodrigo.morais@concretesolutions.com.br>
#####################################################################
arquivo=/etc/passwd
# Checar se o conteúdo/caminho existe
# A instrução abaixo diz para checar se existe e é um arquivo
if [ -f $arquivo ]
then
	echo "O Arquivo EXISTE, vamos ver se $USER possui permissão de leitura"
#	deixando o if aninhado
# conteúdo abaixo checa se existe e tem a permissão de leitura para o usuário atual
if [ -r $arquivo ];
	then
		echo "$USER: Possui PERMISSÃO DE LEITURA "
		cat $arquivo | grep $USER
	else
		echo "$USER: Não possui acesso de leitura"
	fi
else
# se no primeiro if não existisse o arquivo, invocaria a mensagem abaixo
	echo "Arquivo NÃO ENCONTRADO"
fi
