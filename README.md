# Điểm danh làm việc — ứng dụng cá nhân của Tien

Ứng dụng điểm danh cá nhân cho một người dùng: làm việc tự do, tự kỷ luật giờ làm việc, theo dõi bản thân có làm đúng giờ không.

## Tính năng v1 (frontend)

- Nút Vào làm / Tan làm, tính muộn theo phút, cảnh báo về sớm
- Theo dõi tuần, chuỗi ngày đúng giờ, tỉ lệ đúng giờ trong tháng
- Lịch tháng, bấm vào từng ngày để xem chi tiết
- Cài đặt giờ làm việc: giờ vào mục tiêu, giờ tan mục tiêu, số phút cho phép trễ, ngày làm việc trong tuần
- Thêm / sửa / xóa ngày đã qua, xuất CSV sao lưu

## Cách dùng

Mở file `index.html` bằng trình duyệt là dùng được ngay. Khi chưa cấu hình Supabase, dữ liệu lưu bằng localStorage trên trình duyệt đó.

## Backend — Bước 2 (Supabase)

1. Tạo project Supabase, chạy file `supabase/schema.sql` trong SQL Editor (tạo bảng `settings`, `attendance` và Row Level Security).
2. Điền `SUPABASE_URL` và `SUPABASE_ANON_KEY` vào đầu thẻ `<script>` trong `index.html` (chỉ dùng anon key, không dùng service_role key).
3. Mở app, đăng ký / đăng nhập bằng email, bấm "Nhập dữ liệu local lên cloud" lần đầu nếu đã có dữ liệu cũ. Sau đó mọi thay đổi tự đồng bộ, dùng chung trên máy tính và điện thoại.

## Công nghệ đã chốt

- Frontend: HTML/CSS/JS thuần
- Backend (bước tiếp theo): Supabase — PostgreSQL + Auth + Row Level Security
- Deploy: GitHub Pages / Netlify (trang tĩnh)
