#!/bin/zsh

source .env

URL_FR=$(curl -s -X POST https://api.poeditor.com/v2/projects/export \
     -d api_token="$POEDITOR_TOKEN" \
     -d id="???" \
     -d language="fr" \
     -d type="arb" | jq -r '.result.url')

URL_EN=$(curl -s -X POST https://api.poeditor.com/v2/projects/export \
     -d api_token="$POEDITOR_TOKEN" \
     -d id="???" \
     -d language="en" \
     -d type="arb" | jq -r '.result.url')

curl -s "$URL_FR" > lib/l10n/fr.arb
curl -s "$URL_EN" > lib/l10n/en.arb
