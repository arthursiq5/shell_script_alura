#!/bin/bash

cd ./imagens-livros

for imagem in *.jpg # percorre um vetor com todos os arquivos com extensão '.jpg'
do
	# pegando o nome da imagem sem extensão
	imagem_sem_extensao=$(ls $imagem | awk -F . '{ print $1 }')
	convert ./$imagem ./$imagem_sem_extensao.png
done
echo -e "\n\n---\\\\\\---"
echo -e "\n\nas imagens selecionadas foram convertidas"
