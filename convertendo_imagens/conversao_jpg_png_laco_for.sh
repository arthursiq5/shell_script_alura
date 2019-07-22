#!/bin/bash
# conversão de imagens por passagem de parâmetros

# constante com caminho da pasta com as imagens
CAMINHO_IMAGENS=~/projetos/shell_script_alura/convertendo_imagens/imagens-livros

for imagem in $@ # laço de repetição ( $@ = todos os parâmetros do arquivo)
do
	# função de conversão de imagens
	convert $CAMINHO_IMAGENS/$imagem.jpg $CAMINHO_IMAGENS/$imagem.png
done # fim do laço

# mensagens de sucesso
echo -e "\n\n---\\\\\\---"
echo -e "\n\nas imagens selecionadas foram convertidas com sucesso"
