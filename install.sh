#!/bin/bash

echo "===== Download Tcloud App ====="
URL=$(curl -s https://api.github.com/repos/w3b573r/Sinnerleech/releases/latest | grep browser_download_url | cut -d '"' -f 4)
wget $URL -O tcloud.tgz

echo "===== Unarchive App ====="
mkdir sinnerleech
tar zxf sinnerleech.tgz -C sinnerleech --strip-components 1

echo "===== Install dependencies ====="
cd sinnerleech
npm install --only=prod