#!/bin/bash

FD_SCRIPT="./fd"
TARGET="/data/data/com.termux/files/usr/bin/fd"

if [ ! -f "$FD_SCRIPT" ]; then
  echo "[!] 'fd' dosyası bu dizinde bulunamadı!"
  exit 1
fi

clear
echo "[?] Kullanım yöntemi seçin:"
echo "1. Root (Magisk)"
echo "2. Root'suz (Shizuku)"
read -p "[?] Seçiminiz (1/2): " choice

case "$choice" in
  1)
    echo "[*] Root seçildi. Root komutları aktif ediliyor..."
    sed -i 's|^MODE=.*|MODE=root|' "$FD_SCRIPT"
    ;;
  2)
    echo "[*] Shizuku seçildi. Komutlar rish ile çalışacak..."
    sed -i 's|^MODE=.*|MODE=shizuku|' "$FD_SCRIPT"
    ;;
  *)
    echo "[!] Geçersiz seçim. Kurulum iptal edildi."
    exit 1
    ;;
esac


cp "$FD_SCRIPT" "$TARGET"
chmod +x "$TARGET"


pkg install wget curl jq -y

clear
echo "[✓] Kurulum tamamlandı! Artık 'fd' komutunu doğrudan kullanabilirsin."


cd ..
rm -rf Fd-cli
