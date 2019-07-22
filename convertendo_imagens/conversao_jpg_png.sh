#!/bin/bash

CAMINHO_IMAGENS=~/projetos/shell_script_alura/convertendo_imagens/imagens-livros

for imagem in $@
do
	convert $CAMINHO_IMAGENS/$imagem.jpg $CAMINHO_IMAGENS/$imagem.png
done
echo -e "\n\n---\\\\\\---"
echo -e "\n\nas imagens selecionadas foram convertidas"
