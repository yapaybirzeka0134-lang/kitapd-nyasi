create extension if not exists pgcrypto;
create type public.user_role as enum ('user','admin'); create type public.book_status as enum ('draft','published');
create table public.profiles(id uuid primary key references auth.users on delete cascade,role user_role not null default 'user',created_at timestamptz not null default now());
create table public.books(id uuid primary key default gen_random_uuid(),title text not null,slug text unique not null,author text not null,description text not null default '',category text not null default 'Genel',cover_url text,pdf_url text,status book_status not null default 'draft',created_at timestamptz not null default now(),updated_at timestamptz not null default now());
alter table public.profiles enable row level security; alter table public.books enable row level security;
create function public.is_admin() returns boolean language sql stable security definer set search_path=public as $$select exists(select 1 from public.profiles where id=auth.uid() and role='admin')$$;
create policy "published books readable" on public.books for select using(status='published' or public.is_admin()); create policy "admins manage books" on public.books for all using(public.is_admin()) with check(public.is_admin()); create policy "own profile readable" on public.profiles for select using(id=auth.uid());
insert into storage.buckets(id,name,public,file_size_limit,allowed_mime_types) values('book-files','book-files',false,52428800,array['application/pdf','image/jpeg','image/png','image/webp']) on conflict(id) do nothing;
create policy "admins manage book files" on storage.objects for all using(bucket_id='book-files' and public.is_admin()) with check(bucket_id='book-files' and public.is_admin());
