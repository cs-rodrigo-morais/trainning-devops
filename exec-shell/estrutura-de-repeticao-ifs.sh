#!/bin/bash
#####################################################################
# Program:
# Description:
# Separador de campos IFS - usa uma lista de caracteres que o shell usa como separador de campos, espaço, tabulação, newline
# Author: Rodrigo Morais <rodrigo.morais@concretesolutions.com.br>
#####################################################################
# declaro na variável o caminho de um arquivo
arquivo=/home/rmorais/arq1
# utilizei o separador newline porque nomes compostos possuem espaços, assim não quebrando
IFS=$'\n'
IFSOLD=$IFS
# utilizando crase para mostrar o conteudo
for nome in	`cat $arquivo`
do
	echo "O nome é: $nome"
done
# após a conclusão atualizada a variável IFS antigo que está na variável IFSOLD
IFS=$IFSOLD
