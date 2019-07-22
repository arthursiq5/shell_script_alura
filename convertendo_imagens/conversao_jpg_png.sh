#!/bin/bash

CAMINHO_IMAGENS=~/projetos/shell_script_alura/convertendo_imagens/imagens-livros

convert $CAMINHO_IMAGENS/$1.jpg $CAMINHO_IMAGENS/$1.png

convert $CAMINHO_IMAGENS/$2.jpg $CAMINHO_IMAGENS/$2.png

