-- Backend Supabase cho ứng dụng điểm danh cá nhân của Tien
-- Chạy file này trong Supabase Dashboard > SQL Editor, 1 lần duy nhất.
-- Sau đó điền SUPABASE_URL và SUPABASE_ANON_KEY vào index.html.

-- 1) Bảng cài đặt: mỗi tài khoản chỉ có đúng 1 dòng (user_id là khóa chính).
create table if not exists public.settings (
  user_id uuid primary key references auth.users (id) on delete cascade,
  start_time time not null default '08:00',
  end_time time not null default '17:00',
  grace_minutes integer not null default 0,
  work_days integer[] not null default '{1,2,3,4,5}',
  updated_at timestamptz not null default now()
);

-- 2) Bảng điểm danh: mỗi tài khoản, mỗi ngày chỉ có đúng 1 dòng.
create table if not exists public.attendance (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users (id) on delete cascade,
  work_date date not null,
  check_in time,
  check_out time,
  note text not null default '',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (user_id, work_date)
);

-- 3) Bật Row Level Security: mỗi tài khoản chỉ thấy / sửa được dữ liệu của chính mình.
alter table public.settings enable row level security;
alter table public.attendance enable row level security;

drop policy if exists "settings_own_only" on public.settings;
create policy "settings_own_only" on public.settings
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "attendance_own_only" on public.attendance;
create policy "attendance_own_only" on public.attendance
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);
