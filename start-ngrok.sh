#!/bin/bash

# Ensure ngrok is installed
if ! command -v ngrok &> /dev/null
then
    echo "ngrok could not be found, installing..."
    sudo apt update
    sudo apt install -y ngrok
fi

# Start ngrok
echo "Starting ngrok..."
ngrok authtoken $NGROK_AUTH_TOKEN
ngrok http 80
