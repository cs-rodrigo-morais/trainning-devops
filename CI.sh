#!/bin/bash
#####################################################################
# Program: 
# Description: script para buscar containers integrado com gitlab
#
# Author: Rodrigo Morais <rodrigo.morais@concretesolutions.com.br>
#####################################################################
PATH="$PATH"

## declarando variaveis
CONT_NAME_JENKINS="jenkins"
CONT_NAME_GITLAB="gitlab"

## Array = armazenas mais valores, variável armazena somente um.
####CONTAINERS=("$CONT_NAME_JENKINS" "$CONT_NAME_GITLAB")
CONTAINERS=( "$CONT_NAME_JENKINS" "$CONT_NAME_GITLAB" )
## Declarando uma funcao para limpeza do container. Se estive UP vai parar e remover                                                                                
## '@' seleciona todos os índices, retornando os valores guardados no Array.
function limpa_cont(){
	for c in "${CONTAINERS[@]}"; do 
		RODANDO=$(docker ps | grep -o "$c")
		if [ -n "$RODANDO" ]; then
			docker kill $c
			docker rm $c
		else
			echo "CONTAINER $c PARADO"
			docker rm $c
		fi	
#		docker rm $c
	done
}

## Declarando uma funcao para baixar o container
## Verifica no array 
function baixa_cont(){
	for c in "${CONTAINERS[@]}"; do 
		docker pull $c
	done	
}

## funcao para executar o container

function exec_cont(){
	for c in "${CONTAINERS[@]}"; do 
		if [ $c == $CONT_NAME_JENKINS ]; then
			docker run -p 8080:8080 -p 50000:50000 $c
		elif [ $c == $CONT_NAME_GITLAB ]; then
			docker run -t -i --rm $c bash
		fi 
	done	
}	

## funcao de validar o container

function valide_cont(){
	for c in "${CONTAINERS[@]}"; do
		STATUS=$(docker inspect --format="{{ .State.Running }}" $c)	
		NOME=$(docker inspect --format="{{ .Name }}" $c | cut -d'/' -f2)
		if [ $STATUS == "true" ]; then
			echo "CONTAINER $NOME RODANDO"
		else 
			echo "CONTAINER $NOME PARADO"
			ERRO=$(docker inspect --format="{{ .State.Error }}" $c)
			echo "ERRO:"  $ERRO
		fi 
	done 
}

## Chamadas na funcao. Cada funcao que eu add sera outra linha declarada aqui.
limpa_cont
baixa_cont
exec_cont
valide_cont
