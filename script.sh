#!/bin/bash

CONFIG=config.json
CREDS=credentials.json

echo "Downloading configurations"

curl -Lo "$CONFIG" https://raw.githubusercontent.com/sinjs/script/shitlaptop-arch/$CONFIG
curl -Lo "$CONFIG" https://raw.githubusercontent.com/sinjs/script/shitlaptop-arch/$CREDS

echo "Running archinstall"
echo "Config: $CONFIG"
echo "Creds: $CREDS"

archinstall --config $CONFIG --creds $CREDS
