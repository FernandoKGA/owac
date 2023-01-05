#!/bin/bash
#Open WhatsApp Conversation

# Prompt the user for a phone number
read -p "Coloque o número de telefone(somente números): " phone

# Prompt the user to choose a browser
echo "Que navegador você gostaria de usar?"
echo "1. Chrome"
echo "2. Firefox"
read -p "Coloque o número do navegador de sua escolha: " browser

# Open the URL in the chosen browser
if [ "$browser" == "1" ]; then
  google-chrome "https://api.whatsapp.com/send?phone=$phone"
elif [ "$browser" == "2" ]; then
  firefox "https://api.whatsapp.com/send?phone=$phone"
else
  echo "Escolha inválida."
fi
