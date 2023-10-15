#!/bin/bash
#Open WhatsApp Conversation

# Prompt the user for a phone number
read -p "Coloque o número de telefone(somente números): " phone

# Prompt the user to choose a browser
echo "Que navegador você gostaria de usar?"
echo "1. Chrome"
echo "2. Firefox"
read -p "Coloque o número do navegador de sua escolha: " browser

# Prompt the user to choose app or web
echo "Você quer usar o aplicativo ou o web?"
echo "1. Aplicativo"
echo "2. Web"
read -p "Coloque o modo de usar de sua escolha: " method

if [ "$method" == "1" ]; then
  domain="https://api.whatsapp.com/send?phone=$phone"
elif [ "$method" == "2" ]; then
  domain="https://web.whatsapp.com/send?phone=$phone"
else
  echo "Escolha inválida."
fi

# Open the URL in the chosen browser
if [ "$browser" == "1" ]; then
  google-chrome $domain
elif [ "$browser" == "2" ]; then
  firefox $domain
else
  echo "Escolha inválida."
fi
