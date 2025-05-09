#!/bin/bash


TARGET="/data/data/com.termux/files/usr/bin/fd"


if [ ! -f ./fd ]; then
  echo "'fd' dosyası bu dizinde bulunamadı!"
  exit 1
fi


cp ./fd "$TARGET"
chmod +x "$TARGET"

pkg install wget curl jq termux-tools -y

clear

echo "'fd' komutu başarıyla yüklendi. Artık doğrudan 'fd' yazabilirsin."

cd ..

rm -rf Fd-cli
