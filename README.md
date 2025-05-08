# Fd-cli

**Rootlu cihazlar için hızlı ve kolay APK yükleyici.**

---

## Kurulum

**NOT:** Root'suz cihazlarda uygulama kurma özelliği çalışmamaktadır. Ve script tamamen F-Droid üzerine kuruludur

Termux'u açın ve aşağıdaki komutu yazın:

```bash
pkg install git -y && git clone https://github.com/av2xn/Fd-cli && cd Fd-cli && bash setup.sh && cd ..
```

---

## Kullanım

```bash
fd s        → Uygulama arama
fd i        → APK yükle (örnek: org.app_123.apk)
fd u        → Veritabanını güncelle
```

---

## Örnek Kullanım

Yükleyeceğimiz uygulamanın öncelikle paket adını öğrenmemiz gerekiyor. Bunun için:

```bash
fd s
```

Yazarak uygulamanın paket adını öğreniyoruz.

Daha sonra:

```bash
fd i
```

Komutunu yazıp, az önce aldığımız paket adını giriyoruz. Script otomatik olarak uygulamayı indirip yüklüyor.

---

## Desteklenen Platform

- Termux (Android 7.0+)
- Root erişimi gereklidir

