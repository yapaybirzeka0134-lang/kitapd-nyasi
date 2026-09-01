# KitapDünyası

Vercel üzerinde çalışan, Next.js App Router tabanlı açık katalog kitap keşif uygulaması.

## Veri ve telif yaklaşımı

Uygulama çalışma zamanında Open Library açık kataloğundan yalnızca bibliyografik metadata ve kapak kaydı getirir. Telifli kitapların tam metni, bölümü veya EPUB/PDF dosyası üçüncü taraf sitelerden çekilmez ya da barındırılmaz. Tam metin okuyucu yalnızca kamu malı veya hak sahibi tarafından lisanslanmış içerik için etkinleştirilmelidir.

## Başlatma

```bash
npm install
npm run dev
```

`NEXT_PUBLIC_SITE_URL` değerini Vercel proje ortam değişkenlerinde üretim adresiyle ayarlayın.

## Bu sürüm

- Canlı katalog araması, kategori keşfi ve detay sayfası
- Responsive açık/koyu tema
- Yerel cihaz kitaplığı, favoriler ve okuyucu tercihleri
- Metadata, sitemap, robots ve yükleme/hata ekranları

Kimlik doğrulama, yönetici CRUD, yorumlar, puanlama ve lisanslı dosya yükleme; güvenli bir backend seçildiğinde eklenmelidir.
