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

## Supabase yönetim paneli

1. [Supabase for Vercel](https://vercel.com/marketplace/supabase/supabase) entegrasyonu ile bir Supabase projesi bağlayın.
2. `supabase/migrations/0001_admin_books.sql` dosyasını Supabase SQL Editor'da uygulayın.
3. İlk yönetici hesabını Supabase Auth ile oluşturun, ardından SQL Editor'da kendi `auth.users.id` değeri için `profiles` tablosına `role = 'admin'` içeren bir kayıt ekleyin.
4. Supabase Storage `book-files` bucket'ı migration ile oluşturulur. PDF sınırı 50 MB'dir; yalnızca PDF, JPEG, PNG ve WebP kabul edilir.
