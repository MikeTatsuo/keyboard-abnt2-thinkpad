# Mapa de caracteres para o teclado Lenovo ThinkPad

![Keyboard ABNT2 Lenovo ThinkPad] (https://miketatsuo.github.io/assets/img/keyboard-abnt2-thinkpad.jpg)


Mapa de caracteres para o teclado Lenovo Thinkpad no padrão ABNT2 pt-BR para Linux

## Instalação

Faça o download dos arquivos
```
git clone https://github.com/MikeTatsuo/keyboard-abnt2-thinkpad
```

### Instalação Automática (Slackware)

Navegue até a pasta onde foi baixado os arquivos e execute o script como root.
```
./install-slackware.sh
```

Após instalado reinicie o computador.

### Instalação Manual

Copie o arquivo `br-abnt2-thinkpad.map.gz` para a pasta `/usr/share/kbd/keymaps/i386/qwerty/`

```
cp br-abnt2-thinkpad.map.gz /usr/share/kbd/keymaps/i386/qwerty/br-abnt2-thinkpad.map.gz
```

Edite o script em `/etc/rc.d/rc.keymap` para ficar igual ao script abaixo
```
if [ -x /usr/bin/loadkeys ]; then
    /usr/bin/loadkeys br-abnt2-thinkpad.map
fi
```

Se o arquivo não existir crie o arquivo `rc.keymap` dentro da pasta `/etc/rc.d/`, escreva o script acima dentro do arquivo, e torne ele executável
```
touch /etc/rc.d/rc.keymap
echo "if [ -x /usr/bin/loadkeys ]; then /usr/bin/loadkeys br-abnt2-thinkpad.map fi" > /etc/rc.d/rc.keymap
chmod 766 /etc/rc.d/rc.keymap
```

Reinicie o computador.

## Autor

[**MikeTatsuo**](https://github.com/MikeTatsuo)