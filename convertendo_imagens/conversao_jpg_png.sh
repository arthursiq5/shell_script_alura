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

converte_imagem
echo $imagem_sem_extensao
#echo -e "\n\n---\\\\\\---"
#echo -e "\n\nas imagens selecionadas foram convertidas"
