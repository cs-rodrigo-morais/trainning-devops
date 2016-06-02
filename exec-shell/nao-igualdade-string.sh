#!/bin/bash
#####################################################################
# Program:
# Description:
# Teste do uso: String
# Author: Rodrigo Morais <rodrigo.morais@concretesolutions.com.br>
#####################################################################
#fruta=laranja
fruta=pera
# declarado uma variável fruta com atributo laranja
# verificará se o conteudo da variável fruta seja diferente de laranja
if [ $fruta != laranja ]; then
	echo "A fruta não é laranja, é $fruta"
else
	echo "A fruta é $fruta"
fi
