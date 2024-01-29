#!/bin/bash

CONFIG=config.json
CREDS=credentials.json

echo "Downloading configurations"

curl -Lso "$CONFIG" https://raw.githubusercontent.com/sinjs/script/shitlaptop-arch/$CONFIG
curl -Lso "$CONFIG" https://raw.githubusercontent.com/sinjs/script/shitlaptop-arch/$CREDS

echo "Running archinstall"
echo "Config: $CONFIG"
echo "Creds: $CREDS"

archinstall --config $CONFIG --creds $CREDS
