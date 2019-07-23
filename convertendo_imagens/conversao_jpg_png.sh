#!/bin/bash

converte_imagem(){
	# se o diretório png não existir, crie-o
	if [ ! -d png ]
	then
		mkdir png
	fi


	cd ./imagens-livros


	for imagem in *.jpg # percorre um vetor com todos os arquivos com extensão '.jpg'
	do
		# pegando o nome da imagem sem extensão
		local imagem_sem_extensao=$(ls $imagem | awk -F . '{ print $1 }')
		convert $imagem ../png/$imagem_sem_extensao.png
	done
}

converte_imagem>erros_conversao.let
if [ $? -eq 0 ]
then
	echo "convertido com sucesso"
else
	echo "houve um erro, tente novamente"
fi

