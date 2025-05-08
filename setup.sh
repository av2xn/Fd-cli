#!/bin/bash

# Hedef konum
TARGET="/data/data/com.termux/files/usr/bin/fd"

# Aynı dizindeki 'fd' dosyasını kopyala
if [ ! -f ./fd ]; then
  echo "'fd' dosyası bu dizinde bulunamadı!"
  exit 1
fi

# Kopyala ve çalıştırılabilir yap
cp ./fd "$TARGET"
chmod +x "$TARGET"

pkg install wget curl jq -y

clear

echo "'fd' komutu başarıyla yüklendi. Artık doğrudan 'fd' yazabilirsin."

cd ..

rm -rf Fd-cli

