#! /usr/bin/env bash

# Install Nodejs
echo 'Installing NodeJS'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install latest

echo `node -v && npm -v`