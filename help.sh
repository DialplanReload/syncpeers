#!/bin/bash
#
# peers.sh - Programa feito para gerar uma lista com Ramal,nome,tecnologia. Ideal para importar
# e fazer as trativas em alguma planilha
#
# Autor: Anderson Freitas <tmsi.freitas@gmail.com>
# Site: http://www.dialplanreload.com/
# Repositorio: https://github.com/DialplanReload/backup-snep
#
# Desenvolvido sob licensa GPL. 
# Fique a vontade para contribuir com a evolucao deste programa.
#
#-----------------------------------------------------------------------------------------------
#
# Opcao de help -h | --help

     if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then

          echo -en "\n**** Programa feito para gerar uma lista com Ramal,nome,tecnologia.\n"
          echo -en "\n Ideal para importar e fazer as trativas em alguma planilha\n\n"
          echo -en "\n O arquivo gerado ficara salvo no diretorio ramais, abaixo do seu diretorio web padrao.\n\n"

     exit 0

     fi

