# KitapDünyası

Next.js App Router ve Supabase tabanlı online kitap/roman okuma platformu başlangıcı.

## Başlangıç

1. `.env.example` dosyasını `.env.local` olarak kopyalayın ve Supabase değerlerini ekleyin.
2. `supabase/migrations/0001_initial.sql` migration dosyasını Supabase SQL Editor veya CLI ile uygulayın.
3. `npm install && npm run dev`

`SUPABASE_SERVICE_ROLE_KEY` istemciye verilmez; yalnızca sunucu tarafındaki yönetim işleri için kullanılır.

## Kapsam

Katalog, keşfetme, kitap/bölüm görünümü, tema altyapısı, metadata/sitemap/robots, Supabase istemcileri, RLS şeması ve kullanıcı etkileşimleri için server action temelini içerir. Üretime geçmeden önce Supabase Auth yönlendirme URL'lerini ve Storage bucket politikalarını yapılandırın.
