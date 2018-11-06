# Mapa de caracteres para o teclado Lenovo Thinkpad

Mapa de caracteres para o teclado Lenovo Thinkpad no padrão ABNT2 pt-BR

### Instalação

Copiar o arquivo br-abnt2-thinkpad.map.gz para a pasta /usr/share/kbd/keymaps/i386/qwerty/

```
cp br-abnt2-thinkpad.map.gz /usr/share/kbd/keymaps/i386/qwerty/br-abnt2-thinkpad.map.gz
```

Incluir o comando em /etc/rc.d/rc.local
```
loadkeys /usr/share/kbd/keymaps/i386/qwerty/br_lenovo_t400.map.gz
```

## Autor

* **Mike Tatsuo** - [MikeTatsuo](https://github.com/MikeTatsuo)