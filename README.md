# Mapa de caracteres para o teclado Lenovo Thinkpad

Mapa de caracteres para o teclado Lenovo Thinkpad no padrão ABNT2 pt-BR

### Instalação

Copiar o arquivo br-thinkpad-abnt2.map.gz para a pasta /usr/share/kbd/keymaps/i386/qwerty/

```
cp br-thinkpad-abnt2.map.gz /usr/share/kbd/keymaps/i386/qwerty/br-thinkpad-abnt2.map.gz
```

Substituit o comando em /etc/rc.d/rc.keymap
```
if [ -x /usr/bin/loadkeys ]; then
    /usr/bin/loadkeys br-thinkpad-abnt2.map
fi
```

## Autor

* **Mike Tatsuo** - [MikeTatsuo](https://github.com/MikeTatsuo)