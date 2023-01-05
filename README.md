# owac
Open WhatsApp Conversation CLI

## Instalação

Crie uma pasta chamada `/.owac` na sua `$HOME`.

Baixe o script e coloque na pasta, ou crie um arquivo de nome `owac.sh` e copie o conteúdo para dentro dela.

Use o comando abaixo para dar permissão de execução:

```bash
chmod +x $HOME/.owac/owac.sh
```

Para chamá-lo como programa, precisamos colocar em `.bashrc`, `bash_profile` ou o arquivo de CLI desejado. Neste caso uso `.bashrc`, então abro o arquivo e ao final dele coloco:

```sh
#owac
export OWAC_ROOT="$HOME/.owac"
alias owac="$OWAC_ROOT/owac.sh"
```

Após salvar o arquivo, use o comando `source` para reiniciar no terminal desejado.

```bash
source ~/.bashrc
```

## Utilização

Para utilizar o `owac`, você precisa que os navegadores instalados possam ser inicializados através do terminal.

O primeiro parâmetro é o **telefone** que você quer mandar mensagem, você só pode digitar números para que funcione corretamente.

O segundo parâmetro é o **navegador** que você deseja abrir o WhatsApp para poder iniciar a conversa.

Se os dados estiverem corretos, a janela do navegador desejado com a tela para iniciar a conversa com o número irá aparecer.

Exemplo do comando:

```
ferkarchiloff@ferkarchiloff-desktop:~$ owac
Coloque o número de telefone(somente números): 5511222233333
Que navegador você gostaria de usar?
1. Chrome
2. Firefox
Coloque o número do navegador de sua escolha: 1
```