# Mapa de caracteres para o teclado Lenovo ThinkPad

![Keyboard ABNT2 Lenovo ThinkPad] (https://miketatsuo.github.io/assets/img/keyboard-abnt2-thinkpad.jpg)


Mapa de caracteres para o teclado Lenovo Thinkpad no padrão ABNT2 pt-BR para Linux

### Instalação

Copiar o arquivo br-abnt2-thinkpad.map.gz para a pasta /usr/share/kbd/keymaps/i386/qwerty/

```
cp br-abnt2-thinkpad.map.gz /usr/share/kbd/keymaps/i386/qwerty/br-abnt2-thinkpad.map.gz
```

Substituir o comando em /etc/rc.d/rc.keymap
```
if [ -x /usr/bin/loadkeys ]; then
    /usr/bin/loadkeys br-thinkpad-abnt2.map
fi
```

## Autor

* [**MikeTatsuo**](https://github.com/MikeTatsuo)