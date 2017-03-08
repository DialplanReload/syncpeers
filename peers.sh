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
BASEDIR=$(dirname "$0")
#
# Import functions and data.
source $BASEDIR/data.cfg
source $BASEDIR/variables.cfg
source $BASEDIR/help.sh

# Generate list of sip peers
   $path_mysql $db -p$db_passwd -u$db_user -e "select name,callerid,canal from peers where canal like 'SIP%';" > sippeers.txt

# Generate list of khomp peers
   $path_mysql $db -p$db_passwd -u$db_user -e "select name,callerid,canal from peers where canal like 'KHOMP%';" > khomppeers.txt

# Create ramais dir and move files

      [[ -d $web_dir/ramais ]] || mkdir $web_dir/ramais

   $path_mv sippeers.txt $web_dir/ramais/.
   $path_mv khomppeers.txt $web_dir/ramais/.

# Acesse o IP do snep e use /ramais para acessar os arquivos.
   echo 0

