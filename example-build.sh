#!/bin/bash
set -x
set -euvo pipefail
IFS=$'\n\t'

export NODE_ENV=production
meteor build --server https://chat.net.hr --directory /var/www/chat/temp
cd /var/www/chat/temp/bundle/programs/server
npm install
