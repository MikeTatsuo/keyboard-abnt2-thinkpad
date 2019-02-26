#!/bin/bash
#
# Script de instalação para slackware do mapa de caracteres para o teclado
# Lenovo Thinkpad no padrão ABNT2, idioma pt_BR
#
# Mike Tatsuo <mike_tatsuo@hotmail.com>

ACTUAL_FOLDER="$( pwd -P )"
MAP_FOLDER="/usr/share/kbd/keymaps/i386/qwerty"
RC_FOLDER="/etc/rc.d"
RC_KEYMAP="if [ -x /usr/bin/loadkeys ]; then /usr/bin/loadkeys br-abnt2-thinkpad.map fi"

if [[ ! -f $MAP_FOLDER/br-abnt2-thinkpad.map.gz ]]; then
    cp $ACTUAL_FOLDER/br-abnt2-thinkpad.map.gz $MAP_FOLDER/br-abnt2-thinkpad.map.gz
fi

if [[ -f $RC_FOLDER/rc.keymap ]]; then
    sed -i '/loadkeys/ s/\([^ ]\)\s.*.map/\1 br-abnt2-thinkpad.map/' $RC_FOLDER/rc.keymap
else 
    echo $RC_KEYMAP > $RC_FOLDER/rc.keymap
    chmod +x $RC_FOLDER/rc.keymap
fi

echo "Instalação concluída"